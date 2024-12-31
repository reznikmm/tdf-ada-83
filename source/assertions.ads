--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

with USERPK;
with DIANA;

package Assertions is

   procedure Check_Kind (Tree : USERPK.TREE; Kind : DIANA.NODE_NAME);

end Assertions;
