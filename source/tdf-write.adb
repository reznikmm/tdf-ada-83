--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

separate (TDF)
procedure Write
  (Name  : File_Name;
   Value : CAPSULE)
is
   Last   : constant Natural := (Bytes.Length (Value.Data) + 7) / 8;
   Output : Byte_IO.File_Type;
   Prefix : Bytes.Bit_Vector;
begin
   Byte_IO.Create (Output, Name => Name);
   Byte_IO.Write (Output, Bytes.x54);
   Byte_IO.Write (Output, Bytes.x44);
   Byte_IO.Write (Output, Bytes.x46);
   Byte_IO.Write (Output, Bytes.x43);

   TDF_Buildins.Append_TDFINT (Prefix, TDF.Version_Major);
   TDF_Buildins.Append_TDFINT (Prefix, TDF.Version_Minor);

   for J in 1 .. (Bytes.Length (Prefix) + 7) / 8 loop
      Byte_IO.Write (Output, Bytes.Get (Prefix, J));
   end loop;

   for J in 1 .. Last loop
      Byte_IO.Write (Output, Bytes.Get (Value.Data, J));
   end loop;

   Byte_IO.Close (Output);
end Write;
