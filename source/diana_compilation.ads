--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

with USERPK;

with TDF_Capsules;

package Diana_Compilation is

   procedure Pass
     (Node   : USERPK.TREE;
      Result : in out TDF_Capsules.Capsule);

end Diana_Compilation;
