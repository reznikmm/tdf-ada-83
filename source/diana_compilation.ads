--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

with Contexts;
with TDF_Capsules;
with USERPK;

package Diana_Compilation is

   procedure Pass
     (Context : in out Contexts.Context;
      Root    : USERPK.TREE;
      Result  : in out TDF_Capsules.Capsule);

end Diana_Compilation;
