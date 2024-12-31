--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

with Text_IO;
with PRINTNOD;
package body Assertions is

   procedure Check_Kind (Tree : USERPK.TREE; Kind : DIANA.NODE_NAME) is
      use DIANA;
   begin
      if DIANA.Kind (Tree) /= Kind then
         Text_IO.Put ("Unexpected node kind. Expected: ");
         Text_IO.Put_Line (DIANA.NODE_NAME'Image (Kind));
         Text_IO.Put_Line ("Got:");
         PRINTNOD.PRINT_NODE (Tree);
         raise Constraint_Error;
      end if;
   end Check_Kind;

end Assertions;
