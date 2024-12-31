--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

with TDF;
with TDF_Buildins;

package body Diana_Compilation is

   procedure Pass
     (Node   : USERPK.TREE;
      Result : in out TDF_Capsules.Capsule)
   is
      Id  : Natural;
      Ext : constant TDF.EXTERNAL :=
        TDF.c_string_extern (TDF_Buildins.To_TDFIDENT ("tmp"));
      --  Ext : TDF.EXTERNAL;
      --  List : TDF.TDFIDENT_LIST;
   begin
      --  TDF.Append (List, TDF_Buildins.To_TDFIDENT ("aaa"));
      --  TDF.Append (List, TDF_Buildins.To_TDFIDENT ("bbb"));
      --  Ext :=
      --    TDF.c_unique_extern
      --      (TDF.c_make_unique (List));

      TDF_Capsules.Append_Extenal_Tag
        (Result, Node, Ext, Id);
   end Pass;

end Diana_Compilation;
