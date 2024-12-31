--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

with DIANA;
with DIANATTR;
with DIANAMAN;
with PRINTNOD;
with TDF;
with TDF_Buildins;
with Walk_Tree;

package body Diana_Compilation is

   procedure Pre_Operation
     (Node    : USERPK.TREE;
      Context : in out Contexts.Context;
      Value   : in out TDF_Capsules.Capsule;
      State   : in out Walk_Tree.Traverse_Control);

   procedure Walk_Library_Level is new
     Walk_Tree.Pre_Traverse_With_Context (TDF_Capsules.Capsule, Pre_Operation);

   procedure Walk_Object_Decl
     (Context : Contexts.Context;
      Node    : USERPK.TREE;
      Result  : in out TDF_Capsules.Capsule);

   ----------
   -- Pass --
   ----------

   procedure Pass
     (Context : in out Contexts.Context;
      Root    : USERPK.TREE;
      Result  : in out TDF_Capsules.Capsule)
   is
      Compilation : constant USERPK.TREE :=
        DIANA.D (DIANATTR.XD_STRUCTURE, Root);
   begin
      Walk_Library_Level (Compilation, Context, Result);
   end Pass;

   -------------------
   -- Pre_Operation --
   -------------------

   procedure Pre_Operation
     (Node    : USERPK.TREE;
      Context : in out Contexts.Context;
      Value   : in out TDF_Capsules.Capsule;
      State   : in out Walk_Tree.Traverse_Control) is
   begin
      case DIANA.Kind (Node) is
         when DIANA.DN_COMPILATION =>
            null;
         when DIANA.DN_COMPILATION_UNIT =>
            null;
         when DIANA.Class_SEQUENCES =>
            null;
         when DIANA.Class_CONTEXT_ELEM =>
            State := Walk_Tree.Abandon_Children;
         when DIANA.DN_PACKAGE_DECL =>
            null;
         when DIANA.DN_PACKAGE_ID =>
            null;
         when DIANA.DN_PACKAGE_SPEC =>
            null;
         when DIANA.Class_OBJECT_DECL =>
            State := Walk_Tree.Abandon_Children;
            Walk_Object_Decl (Context, Node, Value);
         when others =>
            PRINTNOD.PRINT_NODE (Node);
            raise Program_Error;
      end case;
   end Pre_Operation;

   ----------------------
   -- Walk_Object_Decl --
   ----------------------

   procedure Walk_Object_Decl
     (Context : Contexts.Context;
      Node    : USERPK.TREE;
      Result  : in out TDF_Capsules.Capsule)
   is
      Names : constant USERPK.TREE :=
        DIANA.D (DIANATTR.AS_SOURCE_NAME_S, Node);

      List  : USERPK.SEQ_TYPE := DIANAMAN.LIST (Names);
      Item : USERPK.TREE;
      Id  : Natural;
   begin
      while not DIANAMAN.IS_EMPTY (List) loop
         DIANAMAN.POP (List, Item);

         declare
            Symbol : constant USERPK.TREE :=
              DIANA.D (DIANATTR.LX_SYMREP, Item);

            Ext    : constant TDF.EXTERNAL :=
              TDF.c_string_extern
                (TDF_Buildins.To_TDFIDENT (DIANAMAN.PRINTNAME (Symbol)));
         begin
            TDF_Capsules.Append_Extenal_Tag
              (Result, Node, Ext, Id);
         end;
      end loop;
   end Walk_Object_Decl;

end Diana_Compilation;
