--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

--  with Text_IO;

with DIANA;
with DIANATTR;
with DIANAMAN;
with PRINTNOD;

with Assertions;
with Walk_Tree;

package body Walk_Compilation_Unit is

   procedure Pre_Operation
     (Node    : USERPK.TREE;
      Context : in out Contexts.Context;
      Value   : USERPK.TREE;
      Ignore  : in out Walk_Tree.Traverse_Control);

   procedure Set_Enclosing_Defining_Name is new
     Walk_Tree.Pre_Traverse_With_Context_RO (USERPK.TREE, Pre_Operation);

   procedure Pre_Operation
     (Node    : USERPK.TREE;
      Context : in out Contexts.Context;
      Value   : USERPK.TREE;
      Ignore  : in out Walk_Tree.Traverse_Control)
   is
      Down : USERPK.TREE := Value;
   begin
      case DIANA.Kind (Node) is
         when DIANA.Class_ID_DECL =>
            Down := DIANA.D (DIANATTR.AS_SOURCE_NAME, Node);
            Set_Enclosing_Defining_Name (Down, Context, Value);
         when DIANA.Class_SOURCE_NAME =>
            Contexts.Set_Enclosing_Defining_Name (Context, Node, Value);
         when others =>
            null;
      end case;
   end Pre_Operation;

   --------------------------
   -- Pass_Transitive_With --
   --------------------------

   procedure Pass_Transitive_With
     (Self : in out Contexts.Context;
      Unit : USERPK.TREE)
   is
      List : USERPK.SEQ_TYPE;
      Item : USERPK.TREE;
   begin
      Assertions.Check_Kind (Unit, DIANA.DN_COMPILATION_UNIT);
      PRINTNOD.PRINT_NODE (Unit, 10);
      Set_Enclosing_Defining_Name (Unit, Self, DIANAMAN.CONST_NIL);

      List := DIANAMAN.LIST (Unit);

      while not DIANAMAN.IS_EMPTY (List) loop
         DIANAMAN.POP (List, Item);
         Item := DIANA.D (DIANATTR.TW_COMP_UNIT, Item);
         Assertions.Check_Kind (Item, DIANA.DN_COMPILATION_UNIT);
         Set_Enclosing_Defining_Name (Item, Self, DIANAMAN.CONST_NIL);
      end loop;
   end Pass_Transitive_With;

end Walk_Compilation_Unit;
