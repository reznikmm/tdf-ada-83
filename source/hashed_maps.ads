--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

generic
   type Key_Type is private;
   type Item_Type is private;
   with function Hash (Value : Key_Type) return Natural;
   with function "=" (Left, Right : Key_Type) return Boolean;

   None : Key_Type;
package Hashed_Maps is

   type Hash_Map is limited private;

   procedure Insert
     (Self : in out Hash_Map;
      Key  : Key_Type;
      Item : Item_Type);

   function Length (Self : Hash_Map) return Natural;

   function Contains (Self : Hash_Map; Key : Key_Type) return Boolean;

   function Get (Self : Hash_Map; Key : Key_Type) return Item_Type;

   function First_Key (Self : Hash_Map) return Key_Type;

   procedure Next_Key
     (Self : Hash_Map;
      Key  : in out Key_Type);

private

   type Node is record
      Key  : Key_Type;
      Item : Item_Type;
   end record;

   type Node_Array is array (Natural range <>) of Node;

   type Node_Array_Access is access Node_Array;

   type Hash_Map is record
      Nodes : Node_Array_Access;
      Count : Natural := 0;
   end record;

end Hashed_Maps;
