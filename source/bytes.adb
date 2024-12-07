--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

with Unchecked_Deallocation;

package body Bytes is

   procedure Free is
     new Unchecked_Deallocation (Byte_Array, Byte_Array_Access);

   ---------
   -- "+" --
   ---------

   function "+" (L, R : Byte) return Byte is
      Left   : constant Natural := Byte'Pos (L);
      Right  : constant Natural := Byte'Pos (R);
      Result : constant Natural := Left + Right;
   begin
      if Result < 256 then
         return Byte'Val (Result);
      else
         return Byte'Val (Result - 256);
      end if;
   end "+";

   -----------
   -- Align --
   -----------

   procedure Align (Self : in out Bit_Vector) is
      Used : constant Bit_Count := Self.Length mod 8;
   begin
      if Self.Align = Natural'Last then
         Self.Align := Self.Length;
      end if;

      if Used /= 0 then
         Self.Length := Self.Length + (8 - Used);
      end if;
   end Align;

   ------------
   -- Append --
   ------------

   procedure Append
     (Self  : in out Bit_Vector;
      Value : Byte;
      Bits  : Bit_Index)
   is
      Used  : constant Bit_Count := Self.Length mod 8;
      Index : constant Natural := Self.Length / 8;
   begin
      if Self.Heap = null then
         Self.Length := 0;
         Self.Heap := new Byte_Array'(0 .. 7 => x00);
      end if;

      if (Self.Length + Bits + 7) / 8 > Self.Heap'Length then
         declare
            Old : Byte_Array_Access := Self.Heap;
         begin
            Self.Heap := new Byte_Array (0 .. Old'Length + Old'Length / 2 - 1);
            Self.Heap (Old'Range) := Old.all;
            Self.Heap (Old'Last + 1 .. Self.Heap'Last) := (others => x00);
            Free (Old);
         end;
      end if;

      if Used + Bits <= 8 then
         Self.Heap (Index) := Self.Heap (Index) +
           Shift_Left (Value, 8 - Used - Bits);

         Self.Length := Self.Length + Bits;
      else
         Self.Heap (Index) := Self.Heap (Index) +
           Shift_Right (Value, Used + Bits - 8);

         Self.Heap (Index + 1) := Shift_Left (Value, 16 - Used - Bits);
         Self.Length := Self.Length + Bits;
      end if;
   end Append;

   ------------
   -- Append --
   ------------

   procedure Append
     (Self  : in out Bit_Vector;
      Value : Natural;
      Bits  : Bit_Index)
   is
      Length : Bit_Count := Bits;
   begin
      while Length >= 8 loop
         declare
            Item : constant Byte := Byte'Val
              ((Value / 2 ** (Length - 8)) mod 256);
         begin
            Append (Self, Item, 8);
            Length := Length - 8;
         end;
      end loop;

      if Length > 0 then
         declare
            Item : constant Byte := Byte'Val (Value mod 2 ** Length);
         begin
            Append (Self, Item, Length);
         end;
      end if;
   end Append;

   -------------------
   -- Append_Vector --
   -------------------

   procedure Append_Vector
     (Self  : in out Bit_Vector;
      Value : Bit_Vector)
   is
      procedure Copy (From : Natural; Length : Natural);

      procedure Copy (From : Natural; Length : Natural) is
         Used  : constant Bit_Count := Length mod 8;
         Index : constant Natural := Length / 8;
      begin
         for J in From .. Index - 1 loop
            Append (Self, Value.Heap (J), 8);
         end loop;

         if Used > 0 then
            Append (Self, Shift_Right (Value.Heap (Index), 8 - Used), Used);
         end if;
      end Copy;

   begin
      if Value.Align = Natural'Last then
         Copy (From => 0, Length => Value.Length);
      else
         Copy (From => 0, Length => Value.Align);
         Align (Self);
         Copy (From => (Value.Align + 7) / 8, Length => Value.Length);
      end if;
   end Append_Vector;

   -----------
   -- Empty --
   -----------

   function Empty return Bit_Vector is
   begin
      return (Length => 0, Align => Natural'Last, Heap => null);
   end Empty;

   ---------
   -- Get --
   ---------

   function Get (Self : Bit_Vector; Index : Positive) return Byte is
   begin
      return Self.Heap (Index - 1);
   end Get;

   ------------
   -- Length --
   ------------

   function Length (Self : Bit_Vector) return Natural is
   begin
      return Self.Length;
   end Length;

   ----------------
   -- Shift_Left --
   ----------------

   function Shift_Left (L : Byte; Count : Natural) return Byte is
   begin
      return Byte'Val ((Byte'Pos (L) * 2 ** Count) mod 256);
   end Shift_Left;

   -----------------
   -- Shift_Right --
   -----------------

   function Shift_Right (L : Byte; Count : Natural) return Byte is
   begin
      return Byte'Val (Byte'Pos (L) / 2 ** Count);
   end Shift_Right;

   --------------------
   -- Unchecked_Free --
   --------------------

   procedure Unchecked_Free (Self : Bit_Vector) is
      Copy : Byte_Array_Access := Self.Heap;
   begin
      Free (Copy);
   end Unchecked_Free;

end Bytes;
