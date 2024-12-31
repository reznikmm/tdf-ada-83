--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

with Unchecked_Deallocation;

package body Hashed_Maps is

   function Capacity (Self : Hash_Map) return Positive;

   procedure Resize (Self : in out Hash_Map);

   procedure Free is
     new Unchecked_Deallocation (Node_Array, Node_Array_Access);

   --------------
   -- Capacity --
   --------------

   function Capacity (Self : Hash_Map) return Positive is
   begin
      if Self.Nodes = null then
         return 11;
      else
         return Self.Nodes'Length;
      end if;
   end Capacity;

   --------------
   -- Contains --
   --------------

   function Contains (Self : Hash_Map; Key : Key_Type) return Boolean is
      Index : constant Natural := Hash (Key) mod Capacity (Self);
   begin
      return Self.Nodes /= null
        and then Self.Nodes (Index).Key = Key;
   end Contains;

   ---------------
   -- First_Key --
   ---------------

   function First_Key (Self : Hash_Map) return Key_Type is
   begin
      if Self.Nodes /= null then
         for J in Self.Nodes'Range loop
            if Self.Nodes (J).Key /= None then
               return Self.Nodes (J).Key;
            end if;
         end loop;
      end if;

      return None;
   end First_Key;

   ---------
   -- Get --
   ---------

   function Get (Self : Hash_Map; Key : Key_Type) return Item_Type is
      Index : constant Natural := Hash (Key) mod Capacity (Self);
   begin
      if Self.Nodes = null or else Self.Nodes (Index).Key /= Key then
         raise Constraint_Error;
      end if;

      return Self.Nodes (Index).Item;
   end Get;

   ------------
   -- Insert --
   ------------

   procedure Insert
     (Self : in out Hash_Map;
      Key  : Key_Type;
      Item : Item_Type)
   is
      Value : constant Natural := Hash (Key);
      Index : Natural := Value mod Capacity (Self);
   begin
      if Self.Nodes /= null and then Self.Nodes (Index).Key = Key then
         Self.Nodes (Index).Item := Item;
         return;
      end if;

      while Self.Nodes = null or else Self.Nodes (Index).Key /= None loop
         Resize (Self);
         Index := Value mod Capacity (Self);
      end loop;

      Self.Nodes (Index) := (Key, Item);
      Self.Count := Self.Count + 1;
   end Insert;

   ------------
   -- Length --
   ------------

   function Length (Self : Hash_Map) return Natural is
   begin
      return Self.Count;
   end Length;

   --------------
   -- Next_Key --
   --------------

   procedure Next_Key
     (Self : Hash_Map;
      Key  : in out Key_Type)
   is
      Index : constant Natural := Hash (Key) mod Capacity (Self);
   begin
      Key := None;

      for J in Index + 1 .. Self.Nodes'Last loop
         if Self.Nodes (J).Key /= None then
            Key := Self.Nodes (J).Key;
            exit;
         end if;
      end loop;
   end Next_Key;

   ------------
   -- Resize --
   ------------

   procedure Resize (Self : in out Hash_Map) is
      Cap  : constant Positive := Capacity (Self);
      Prev : Node_Array_Access := Self.Nodes;
      Init : Node;
   begin
      Init.Key := None;
      Self.Nodes := new Node_Array'(0 .. Cap + Cap / 2 - 1 => Init);
      Self.Count := 0;

      if Prev /= null then
         for J in Prev'Range loop
            Insert (Self, Prev (J).Key, Prev (J).Item);
         end loop;

         Free (Prev);
      end if;
   end Resize;

end Hashed_Maps;
