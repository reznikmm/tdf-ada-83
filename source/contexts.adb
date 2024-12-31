--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

with DIANA;
with DIANATTR;

with Walk_Compilation;

package body Contexts is

   -----------------------------
   -- Enclosing_Defining_Name --
   -----------------------------

   function Enclosing_Defining_Name
     (Self : Context;
      Name : USERPK.TREE) return USERPK.TREE is
   begin
      return Tree_To_Tree_Map.Get (Self.Enclosing_Defining_Name, Name);
   end Enclosing_Defining_Name;

   -----------------------
   -- Has_Defining_Name --
   -----------------------

   function Has_Defining_Name
     (Self : Context;
      Name : USERPK.TREE) return Boolean is
   begin
      return Tree_To_Tree_Map.Contains (Self.Enclosing_Defining_Name, Name);
   end Has_Defining_Name;

   ----------
   -- Hash --
   ----------

   function Hash (Value : USERPK.TREE) return Natural is
   begin
      return (abs Integer (Value.TPG) * 256 + Natural (Value.TTY)) * 256
        + Natural (Value.TLN);
   end Hash;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize
     (Self : in out Context;
      Root : USERPK.TREE)
   is
      Compilation : constant USERPK.TREE :=
        DIANA.D (DIANATTR.XD_STRUCTURE, Root);
   begin
      Walk_Compilation.Pass_Transitive_With (Self, Compilation);
   end Initialize;

   ---------------------------------
   -- Set_Enclosing_Defining_Name --
   ---------------------------------

   procedure Set_Enclosing_Defining_Name
     (Self  : in out Context;
      Key   : USERPK.TREE;
      Value : USERPK.TREE) is
   begin
      Tree_To_Tree_Map.Insert (Self.Enclosing_Defining_Name, Key, Value);
   end Set_Enclosing_Defining_Name;

end Contexts;
