--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

package body TDF_Buildins is

   -------------------
   -- Append_TDFINT --
   -------------------

   procedure Append_TDFINT
     (Data  : in out Bytes.Bit_Vector;
      Value : Natural)
   is
      procedure Append (X : Natural) is
      begin
         if X > 0 then
            if X > 8 then
               Append (X / 8);
            end if;

            Bytes.Append (Data, X mod 8, 4);
         end if;
      end Append;
   begin
      Append (Value / 8);
      Bytes.Append (Data, Value mod 8 + 8, 4);
   end Append_TDFINT;

   ------------------
   -- To_BITSTREAM --
   ------------------

   function To_BITSTREAM (Raw : Bytes.Bit_Vector) return BITSTREAM is
      Result : Bytes.Bit_Vector;
   begin
      Append_TDFINT (Result, Bytes.Length (Raw));
      Bytes.Append_Vector (Result, Raw);
      Bytes.Unchecked_Free (Raw);

      return (Data => Result);
   end To_BITSTREAM;

   -------------------
   -- To_BYTESTREAM --
   -------------------

   function To_BYTESTREAM (Raw : Bytes.Bit_Vector) return BYTESTREAM is
      Result : Bytes.Bit_Vector;
   begin
      Append_TDFINT (Result, (Bytes.Length (Raw) + 7) / 8);
      Bytes.Align (Result);
      Bytes.Append_Vector (Result, Raw);
      Bytes.Align (Result);
      Bytes.Unchecked_Free (Raw);

      return (Data => Result);
   end To_BYTESTREAM;

   ----------------
   -- To_TDFBOOL --
   ----------------

   function To_TDFBOOL (Value : Boolean) return TDFBOOL is
      Result : TDFBOOL;
   begin
      Bytes.Append (Result.Data, Boolean'Pos (Value), 1);

      return Result;
   end To_TDFBOOL;

   -----------------
   -- To_TDFIDENT --
   -----------------

   function To_TDFIDENT (Value : String) return TDFIDENT is
      Result : TDFIDENT;
   begin
      Append_TDFINT (Result.Data, 8);  --  Char size: TDFINT (8)
      Append_TDFINT (Result.Data, Value'Length);  --  Length
      Bytes.Align (Result.Data);

      for J in Value'Range loop
         Bytes.Append (Result.Data, Character'Pos (Value (J)), 8);
      end loop;

      return Result;
   end To_TDFIDENT;

   ---------------
   -- To_TDFINT --
   ---------------

   function To_TDFINT (Value : Natural) return TDFINT is
      Result : TDFINT;
   begin
      Append_TDFINT (Result.Data, Value);

      return Result;
   end To_TDFINT;

   ------------------
   -- To_TDFSTRING --
   ------------------

   function To_TDFSTRING (Value : String) return TDFSTRING is
      Result : TDFSTRING;
   begin
      Append_TDFINT (Result.Data, 8);  --  Char size: TDFINT (8)
      Append_TDFINT (Result.Data, Value'Length);  --  Length

      for J in Value'Range loop
         Bytes.Append (Result.Data, Character'Pos (Value (J)), 8);
      end loop;

      return Result;
   end To_TDFSTRING;

end TDF_Buildins;
