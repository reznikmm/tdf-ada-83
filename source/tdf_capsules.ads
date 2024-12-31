--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

with Hashed_Maps;
with TDF;
with USERPK;

package TDF_Capsules is

   type Capsule is limited private;

   procedure Append_Extenal_Tag
     (Self : in out Capsule;
      Tree : USERPK.TREE;
      Ext  : TDF.EXTERNAL;
      Id   : out Natural);

   procedure Write (Value : Capsule);

private

   function Hash (Value : USERPK.TREE) return Natural;

   None : constant USERPK.TREE := (0, 0, 0);

   type Extenal_Tag is record
      Id  : Natural;
      Ext : TDF.EXTERNAL;
   end record;

   package Tree_Id_Map is new Hashed_Maps
     (Key_Type  => USERPK.TREE,
      Item_Type => Extenal_Tag,
      Hash      => Hash,
      "="       => USERPK."=",
      None      => None);

   type Capsule is record
      Extenal_Tags : Tree_Id_Map.Hash_Map;
      --  Imported or exported tags
   end record;

end TDF_Capsules;
