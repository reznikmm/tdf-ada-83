--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

with Assertions;
with Walk_Compilation_Unit;

with DIANA;
with DIANATTR;
with DIANAMAN;

package body Walk_Compilation is

   --------------------------
   -- Pass_Transitive_With --
   --------------------------

   procedure Pass_Transitive_With
     (Self : in out Contexts.Context;
      Tree : USERPK.TREE)
   is
      Seq  : USERPK.TREE;  --  Compilation unit list
      List : USERPK.SEQ_TYPE;
      Unit : USERPK.TREE;
   begin
      Assertions.Check_Kind (Tree, DIANA.DN_COMPILATION);

      Seq := DIANA.D (DIANATTR.AS_COMPLTN_UNIT_S, Tree);
      List := DIANAMAN.LIST (Seq);

      while not DIANAMAN.IS_EMPTY (List) loop
         DIANAMAN.POP (List, Unit);
         Walk_Compilation_Unit.Pass_Transitive_With (Self, Unit);
      end loop;
   end Pass_Transitive_With;

end Walk_Compilation;
