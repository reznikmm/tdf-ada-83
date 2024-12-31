--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

with DIANA;
with DIANATTR;
with DIANAMAN;
with USERPK;

with Contexts;
with Diana_Compilation;
with TDF_Capsules;

procedure TDF_Ada_83 is
   Capsule : TDF_Capsules.Capsule;
   Context : Contexts.Context;
begin
   DIANA.OPEN_DIANA;

   declare
      User_Root : constant USERPK.TREE :=
        DIANA.D (DIANATTR.XD_USER_ROOT, DIANAMAN.CONST_ROOT);

   begin
      Contexts.Initialize (Context, User_Root);
      Diana_Compilation.Pass (User_Root, Capsule);
      TDF_Capsules.Write (Capsule);
   end;

end TDF_Ada_83;
