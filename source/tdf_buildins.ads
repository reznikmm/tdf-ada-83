--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

--  This package provides buildin TDF types and their constructors

with Bytes;

package TDF_Buildins is

   type BYTESTREAM is record
      Data : Bytes.Bit_Vector;
   end record;

   function To_BYTESTREAM (Raw : Bytes.Bit_Vector) return BYTESTREAM;

   type BITSTREAM is record
      Data : Bytes.Bit_Vector;
   end record;

   function To_BITSTREAM (Raw : Bytes.Bit_Vector) return BITSTREAM;

   type TDFSTREAM is record
      Data : Bytes.Bit_Vector;
   end record;

   type TDFINT is record
      Data : Bytes.Bit_Vector;
   end record;

   function To_TDFINT (Value : Natural) return TDFINT;

   procedure Append_TDFINT
     (Data  : in out Bytes.Bit_Vector;
      Value : Natural);

   type TDFSTRING is record
      Data : Bytes.Bit_Vector;
   end record;

   function To_TDFSTRING (Value : String) return TDFSTRING;

   type TDFBOOL is record
      Data : Bytes.Bit_Vector;
   end record;

   function To_TDFBOOL (Value : Boolean) return TDFBOOL;

   type TDFIDENT is record
      Data : Bytes.Bit_Vector;
   end record;

   function To_TDFIDENT (Value : String) return TDFIDENT;

end TDF_Buildins;
