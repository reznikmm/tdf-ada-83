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

package body Walk_Compilation_Unit is

   procedure Set_Enclosing_Defining_Name
     (Self  : in out Contexts.Context;
      Node  : USERPK.TREE;
      Value : USERPK.TREE);

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
      Set_Enclosing_Defining_Name (Self, Unit, DIANAMAN.CONST_NIL);

      List := DIANAMAN.LIST (Unit);

      while not DIANAMAN.IS_EMPTY (List) loop
         DIANAMAN.POP (List, Item);
         Item := DIANA.D (DIANATTR.TW_COMP_UNIT, Item);
         Assertions.Check_Kind (Item, DIANA.DN_COMPILATION_UNIT);
         Set_Enclosing_Defining_Name (Self, Item, DIANAMAN.CONST_NIL);
      end loop;
   end Pass_Transitive_With;

   ---------------------------------
   -- Set_Enclosing_Defining_Name --
   ---------------------------------

   procedure Set_Enclosing_Defining_Name
     (Self  : in out Contexts.Context;
      Node  : USERPK.TREE;
      Value : USERPK.TREE)
   is
      use USERPK;
      Down : USERPK.TREE := Value;
   begin
      if Node.TPG <= 0
        or else Node.TLN = 0
        or else DIANA.Kind (Node) not in DIANA.CLASS_ALL_SOURCE
        or else Contexts.Has_Defining_Name (Self, Node)
      then
         return;
      end if;

      case DIANA.Kind (Node) is
         when DIANA.Class_ID_DECL =>
            Down := DIANA.D (DIANATTR.AS_SOURCE_NAME, Node);
            Set_Enclosing_Defining_Name (Self, Down, Value);
         when DIANA.Class_SOURCE_NAME =>
            Contexts.Set_Enclosing_Defining_Name (Self, Node, Value);
         when others =>
            null;
      end case;

      if DIANAMAN.ARITY (Node) = ARBITRARY then
         declare
            Item : USERPK.Tree;
            List : USERPK.SEQ_TYPE;
         begin
            List := DIANAMAN.LIST (Node);
            while not DIANAMAN.IS_EMPTY(List) loop
               DIANAMAN.POP(List, Item);
               Set_Enclosing_Defining_Name (Self, Item, Down);
            end loop;
         end;
      else
         for I in 1 .. USERPK.ARITIES'POS (DIANAMAN.ARITY (Node)) loop
            Set_Enclosing_Defining_Name (Self, DIANAMAN.DABS(I, Node), Down);
         end loop;
      end if;
   end Set_Enclosing_Defining_Name;

end Walk_Compilation_Unit;
