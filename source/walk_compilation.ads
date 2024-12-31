--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

with USERPK;
with Contexts;

package Walk_Compilation is

   procedure Pass_Transitive_With
     (Self : in out Contexts.Context;
      Tree : USERPK.TREE);

end Walk_Compilation;
