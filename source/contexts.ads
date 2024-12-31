--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

with Hashed_Maps;
with USERPK;
with DIANAMAN;

package Contexts is

   type Context is limited private;

   procedure Initialize
     (Self : in out Context;
      Root : USERPK.TREE);

   function Enclosing_Defining_Name
     (Self : Context;
      Name : USERPK.TREE) return USERPK.TREE;
   --  For each DEF_NAME return enclosing DEF_NAME if any

   function Has_Defining_Name
     (Self : Context;
      Name : USERPK.TREE) return Boolean;
   --  Check if Enclosing_Defining_Name has been set

   procedure Set_Enclosing_Defining_Name
     (Self  : in out Context;
      Key   : USERPK.TREE;
      Value : USERPK.TREE);

private

   function Hash (Value : USERPK.TREE) return Natural;

   package Tree_To_Tree_Map is new Hashed_Maps
     (Key_Type  => USERPK.TREE,
      Item_Type => USERPK.TREE,
      Hash      => Hash,
      "="       => USERPK."=",
      None      => DIANAMAN.CONST_VIRGIN);

   type Context is record
      Enclosing_Defining_Name : Tree_To_Tree_Map.Hash_Map;
   end record;

end Contexts;
