--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

--
--  AUTOMATICALLY GENERATED FROM TDF 4.0
--  BY make_tdf (VERSION 2.0), DO NOT EDIT
--

with Sequential_IO;

package body TDF is

   package Byte_IO is new Sequential_IO (Bytes.Byte);

   procedure Write
     (Name  : File_Name;
      Value : CAPSULE) is separate;

   procedure Append_Extended
     (Result : in out Bytes.Bit_Vector;
      Value  : Natural;
      Count  : Natural) is
   begin
      if Value >= 2 ** Count then
         Bytes.Append (Result, 0, Count);
         Append_Extended (Result, Value - 2 ** Count, Count);
      else
         Bytes.Append (Result, Value, Count);
      end if;
   end Append_Extended;

   function None return ACCESS_OPTION is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append (Result, 0, 1);
      return (Data => Result);
   end None;

   function Option (Item : ACCESS_SORT) return ACCESS_OPTION is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append (Result, 1, 1);
      Bytes.Append_Vector (Result, Item.Data);
      return (Data => Result);
   end Option;

   function List (Item : AL_TAGDEF) return AL_TAGDEF_LIST is
      Result : AL_TAGDEF_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out AL_TAGDEF_LIST;
      Item : AL_TAGDEF) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function To_BYTESTREAM (Self : AL_TAGDEF_PROPS) return TDF_Buildins.BYTESTREAM is
      Result : constant TDF_Buildins.BYTESTREAM :=
        TDF_Buildins.To_BYTESTREAM (Self.Data);
   begin
      return Result;      
   end To_BYTESTREAM;

   function List (Item : CAPSULE_LINK) return CAPSULE_LINK_LIST is
      Result : CAPSULE_LINK_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out CAPSULE_LINK_LIST;
      Item : CAPSULE_LINK) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function List (Item : CASELIM) return CASELIM_LIST is
      Result : CASELIM_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out CASELIM_LIST;
      Item : CASELIM) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function List (Item : DIAG_DESCRIPTOR) return DIAG_DESCRIPTOR_LIST is
      Result : DIAG_DESCRIPTOR_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out DIAG_DESCRIPTOR_LIST;
      Item : DIAG_DESCRIPTOR) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function List (Item : DIAG_FIELD) return DIAG_FIELD_LIST is
      Result : DIAG_FIELD_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out DIAG_FIELD_LIST;
      Item : DIAG_FIELD) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function List (Item : DIAG_TAGDEF) return DIAG_TAGDEF_LIST is
      Result : DIAG_TAGDEF_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out DIAG_TAGDEF_LIST;
      Item : DIAG_TAGDEF) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function List (Item : DIAG_TYPE) return DIAG_TYPE_LIST is
      Result : DIAG_TYPE_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out DIAG_TYPE_LIST;
      Item : DIAG_TYPE) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function To_BYTESTREAM (Self : DIAG_TYPE_UNIT) return TDF_Buildins.BYTESTREAM is
      Result : constant TDF_Buildins.BYTESTREAM :=
        TDF_Buildins.To_BYTESTREAM (Self.Data);
   begin
      return Result;      
   end To_BYTESTREAM;

   function To_BYTESTREAM (Self : DIAG_UNIT) return TDF_Buildins.BYTESTREAM is
      Result : constant TDF_Buildins.BYTESTREAM :=
        TDF_Buildins.To_BYTESTREAM (Self.Data);
   begin
      return Result;      
   end To_BYTESTREAM;

   function List (Item : ENUM_VALUES) return ENUM_VALUES_LIST is
      Result : ENUM_VALUES_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out ENUM_VALUES_LIST;
      Item : ENUM_VALUES) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function List (Item : ERROR_CODE) return ERROR_CODE_LIST is
      Result : ERROR_CODE_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out ERROR_CODE_LIST;
      Item : ERROR_CODE) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function List (Item : EXP) return EXP_LIST is
      Result : EXP_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out EXP_LIST;
      Item : EXP) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function None return EXP_OPTION is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append (Result, 0, 1);
      return (Data => Result);
   end None;

   function Option (Item : EXP) return EXP_OPTION is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append (Result, 1, 1);
      Bytes.Append_Vector (Result, Item.Data);
      return (Data => Result);
   end Option;

   function List (Item : EXTERN_LINK) return EXTERN_LINK_LIST is
      Result : EXTERN_LINK_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out EXTERN_LINK_LIST;
      Item : EXTERN_LINK) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function List (Item : GROUP) return GROUP_LIST is
      Result : GROUP_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out GROUP_LIST;
      Item : GROUP) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function List (Item : LABEL) return LABEL_LIST is
      Result : LABEL_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out LABEL_LIST;
      Item : LABEL) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function List (Item : LINK) return LINK_LIST is
      Result : LINK_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out LINK_LIST;
      Item : LINK) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function List (Item : LINKEXTERN) return LINKEXTERN_LIST is
      Result : LINKEXTERN_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out LINKEXTERN_LIST;
      Item : LINKEXTERN) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function List (Item : LINKINFO) return LINKINFO_LIST is
      Result : LINKINFO_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out LINKINFO_LIST;
      Item : LINKINFO) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function To_BYTESTREAM (Self : LINKINFO_PROPS) return TDF_Buildins.BYTESTREAM is
      Result : constant TDF_Buildins.BYTESTREAM :=
        TDF_Buildins.To_BYTESTREAM (Self.Data);
   begin
      return Result;      
   end To_BYTESTREAM;

   function List (Item : LINKS) return LINKS_LIST is
      Result : LINKS_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out LINKS_LIST;
      Item : LINKS) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function None return NAT_OPTION is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append (Result, 0, 1);
      return (Data => Result);
   end None;

   function Option (Item : NAT) return NAT_OPTION is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append (Result, 1, 1);
      Bytes.Append_Vector (Result, Item.Data);
      return (Data => Result);
   end Option;

   function List (Item : OTAGEXP) return OTAGEXP_LIST is
      Result : OTAGEXP_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out OTAGEXP_LIST;
      Item : OTAGEXP) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function None return PROCPROPS_OPTION is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append (Result, 0, 1);
      return (Data => Result);
   end None;

   function Option (Item : PROCPROPS) return PROCPROPS_OPTION is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append (Result, 1, 1);
      Bytes.Append_Vector (Result, Item.Data);
      return (Data => Result);
   end Option;

   function List (Item : SORTNAME) return SORTNAME_LIST is
      Result : SORTNAME_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out SORTNAME_LIST;
      Item : SORTNAME) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function None return STRING_OPTION is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append (Result, 0, 1);
      return (Data => Result);
   end None;

   function Option (Item : STRING) return STRING_OPTION is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append (Result, 1, 1);
      Bytes.Append_Vector (Result, Item.Data);
      return (Data => Result);
   end Option;

   function None return TAG_OPTION is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append (Result, 0, 1);
      return (Data => Result);
   end None;

   function Option (Item : TAG) return TAG_OPTION is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append (Result, 1, 1);
      Bytes.Append_Vector (Result, Item.Data);
      return (Data => Result);
   end Option;

   function None return TAGACC_OPTION is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append (Result, 0, 1);
      return (Data => Result);
   end None;

   function Option (Item : TAGACC) return TAGACC_OPTION is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append (Result, 1, 1);
      Bytes.Append_Vector (Result, Item.Data);
      return (Data => Result);
   end Option;

   function List (Item : TAGDEC) return TAGDEC_LIST is
      Result : TAGDEC_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out TAGDEC_LIST;
      Item : TAGDEC) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function To_BYTESTREAM (Self : TAGDEC_PROPS) return TDF_Buildins.BYTESTREAM is
      Result : constant TDF_Buildins.BYTESTREAM :=
        TDF_Buildins.To_BYTESTREAM (Self.Data);
   begin
      return Result;      
   end To_BYTESTREAM;

   function List (Item : TAGDEF) return TAGDEF_LIST is
      Result : TAGDEF_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out TAGDEF_LIST;
      Item : TAGDEF) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function To_BYTESTREAM (Self : TAGDEF_PROPS) return TDF_Buildins.BYTESTREAM is
      Result : constant TDF_Buildins.BYTESTREAM :=
        TDF_Buildins.To_BYTESTREAM (Self.Data);
   begin
      return Result;      
   end To_BYTESTREAM;

   function List (Item : TAGSHACC) return TAGSHACC_LIST is
      Result : TAGSHACC_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out TAGSHACC_LIST;
      Item : TAGSHACC) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function List (Item : TDFIDENT) return TDFIDENT_LIST is
      Result : TDFIDENT_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out TDFIDENT_LIST;
      Item : TDFIDENT) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function List (Item : TDFINT) return TDFINT_LIST is
      Result : TDFINT_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out TDFINT_LIST;
      Item : TDFINT) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function List (Item : TOKDEC) return TOKDEC_LIST is
      Result : TOKDEC_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out TOKDEC_LIST;
      Item : TOKDEC) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function To_BYTESTREAM (Self : TOKDEC_PROPS) return TDF_Buildins.BYTESTREAM is
      Result : constant TDF_Buildins.BYTESTREAM :=
        TDF_Buildins.To_BYTESTREAM (Self.Data);
   begin
      return Result;      
   end To_BYTESTREAM;

   function List (Item : TOKDEF) return TOKDEF_LIST is
      Result : TOKDEF_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out TOKDEF_LIST;
      Item : TOKDEF) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function To_BYTESTREAM (Self : TOKDEF_PROPS) return TDF_Buildins.BYTESTREAM is
      Result : constant TDF_Buildins.BYTESTREAM :=
        TDF_Buildins.To_BYTESTREAM (Self.Data);
   begin
      return Result;      
   end To_BYTESTREAM;

   function List (Item : TOKFORMALS) return TOKFORMALS_LIST is
      Result : TOKFORMALS_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out TOKFORMALS_LIST;
      Item : TOKFORMALS) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function List (Item : UNIT) return UNIT_LIST is
      Result : UNIT_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out UNIT_LIST;
      Item : UNIT) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function List (Item : VERSION) return VERSION_LIST is
      Result : VERSION_LIST;
   begin
      Append (Result, Item);
      return Result;
   end List;

   procedure Append
     (Self : in out VERSION_LIST;
      Item : VERSION) is
   begin
      Self.Count := Self.Count + 1;
      Bytes.Append_Vector (Self.Data, Item.Data);
      Bytes.Unchecked_Free (Item.Data);
   end Append;

   function To_BYTESTREAM (Self : VERSION_PROPS) return TDF_Buildins.BYTESTREAM is
      Result : constant TDF_Buildins.BYTESTREAM :=
        TDF_Buildins.To_BYTESTREAM (Self.Data);
   begin
      return Result;      
   end To_BYTESTREAM;


   function c_access_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return ACCESS_SORT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 4);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_access_apply_token;

   function c_access_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return ACCESS_SORT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 4);
      Bytes.Append_Vector (Result, p_control.Data);
      Bytes.Unchecked_Free (p_control.Data);
      Bytes.Append_Vector (Result, p_e1.Data);
      Bytes.Unchecked_Free (p_e1.Data);
      Bytes.Append_Vector (Result, p_e2.Data);
      Bytes.Unchecked_Free (p_e2.Data);
      return (Data => Result);
   end c_access_cond;

   function c_add_accesses
     (p_a1 : ACCESS_SORT;
      p_a : ACCESS_SORT)
     return ACCESS_SORT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 4);
      Bytes.Append_Vector (Result, p_a1.Data);
      Bytes.Unchecked_Free (p_a1.Data);
      Bytes.Append_Vector (Result, p_a.Data);
      Bytes.Unchecked_Free (p_a.Data);
      return (Data => Result);
   end c_add_accesses;


   function c_constant return ACCESS_SORT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 4, 4);
      return (Data => Result);
   end c_constant;


   function c_long_jump_access return ACCESS_SORT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 5, 4);
      return (Data => Result);
   end c_long_jump_access;


   function c_no_other_read return ACCESS_SORT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 6, 4);
      return (Data => Result);
   end c_no_other_read;


   function c_no_other_write return ACCESS_SORT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 7, 4);
      return (Data => Result);
   end c_no_other_write;


   function c_out_par return ACCESS_SORT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 8, 4);
      return (Data => Result);
   end c_out_par;


   function c_preserve return ACCESS_SORT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 9, 4);
      return (Data => Result);
   end c_preserve;


   function c_register return ACCESS_SORT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 10, 4);
      return (Data => Result);
   end c_register;


   function c_standard_access return ACCESS_SORT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 11, 4);
      return (Data => Result);
   end c_standard_access;


   function c_used_as_volatile return ACCESS_SORT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 12, 4);
      return (Data => Result);
   end c_used_as_volatile;


   function c_visible return ACCESS_SORT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 13, 4);
      return (Data => Result);
   end c_visible;

   function c_al_tag_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return AL_TAG is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 1);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_al_tag_apply_token;

   function c_make_al_tag
     (p_al_tagno : TDF_Buildins.TDFINT)
     return AL_TAG is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 1);
      Bytes.Append_Vector (Result, p_al_tagno.Data);
      Bytes.Unchecked_Free (p_al_tagno.Data);
      return (Data => Result);
   end c_make_al_tag;

   function c_make_al_tagdef
     (p_t : TDF_Buildins.TDFINT;
      p_a : ALIGNMENT)
     return AL_TAGDEF is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 1);
      Bytes.Append_Vector (Result, p_t.Data);
      Bytes.Unchecked_Free (p_t.Data);
      Bytes.Append_Vector (Result, p_a.Data);
      Bytes.Unchecked_Free (p_a.Data);
      return (Data => Result);
   end c_make_al_tagdef;

   function c_make_al_tagdefs
     (p_no_labels : TDF_Buildins.TDFINT;
      p_tds : AL_TAGDEF_LIST)
     return AL_TAGDEF_PROPS is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append_Vector (Result, p_no_labels.Data);
      Bytes.Unchecked_Free (p_no_labels.Data);
      TDF_Buildins.Append_TDFINT (Result, p_tds.Count);
      Bytes.Append_Vector (Result, p_tds.Data);
      Bytes.Unchecked_Free (p_tds.Data);
      return (Data => Result);
   end c_make_al_tagdefs;

   function c_alignment_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return ALIGNMENT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 4);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_alignment_apply_token;

   function c_alignment_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return ALIGNMENT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 4);
      Bytes.Append_Vector (Result, p_control.Data);
      Bytes.Unchecked_Free (p_control.Data);
      Bytes.Append_Vector (Result, p_e1.Data);
      Bytes.Unchecked_Free (p_e1.Data);
      Bytes.Append_Vector (Result, p_e2.Data);
      Bytes.Unchecked_Free (p_e2.Data);
      return (Data => Result);
   end c_alignment_cond;

   function c_alignment
     (p_sha : SHAPE)
     return ALIGNMENT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 4);
      Bytes.Append_Vector (Result, p_sha.Data);
      Bytes.Unchecked_Free (p_sha.Data);
      return (Data => Result);
   end c_alignment;


   function c_alloca_alignment return ALIGNMENT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 4, 4);
      return (Data => Result);
   end c_alloca_alignment;

   function c_callees_alignment
     (p_var : BOOL)
     return ALIGNMENT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 5, 4);
      Bytes.Append_Vector (Result, p_var.Data);
      Bytes.Unchecked_Free (p_var.Data);
      return (Data => Result);
   end c_callees_alignment;

   function c_callers_alignment
     (p_var : BOOL)
     return ALIGNMENT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 6, 4);
      Bytes.Append_Vector (Result, p_var.Data);
      Bytes.Unchecked_Free (p_var.Data);
      return (Data => Result);
   end c_callers_alignment;


   function c_code_alignment return ALIGNMENT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 7, 4);
      return (Data => Result);
   end c_code_alignment;


   function c_locals_alignment return ALIGNMENT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 8, 4);
      return (Data => Result);
   end c_locals_alignment;

   function c_obtain_al_tag
     (p_at : AL_TAG)
     return ALIGNMENT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 9, 4);
      Bytes.Append_Vector (Result, p_at.Data);
      Bytes.Unchecked_Free (p_at.Data);
      return (Data => Result);
   end c_obtain_al_tag;

   function c_parameter_alignment
     (p_sha : SHAPE)
     return ALIGNMENT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 10, 4);
      Bytes.Append_Vector (Result, p_sha.Data);
      Bytes.Unchecked_Free (p_sha.Data);
      return (Data => Result);
   end c_parameter_alignment;

   function c_unite_alignments
     (p_a1 : ALIGNMENT;
      p_a2 : ALIGNMENT)
     return ALIGNMENT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 11, 4);
      Bytes.Append_Vector (Result, p_a1.Data);
      Bytes.Unchecked_Free (p_a1.Data);
      Bytes.Append_Vector (Result, p_a2.Data);
      Bytes.Unchecked_Free (p_a2.Data);
      return (Data => Result);
   end c_unite_alignments;


   function c_var_param_alignment return ALIGNMENT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 12, 4);
      return (Data => Result);
   end c_var_param_alignment;

   function c_bfvar_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return BITFIELD_VARIETY is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 2);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_bfvar_apply_token;

   function c_bfvar_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return BITFIELD_VARIETY is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 2);
      Bytes.Append_Vector (Result, p_control.Data);
      Bytes.Unchecked_Free (p_control.Data);
      Bytes.Append_Vector (Result, p_e1.Data);
      Bytes.Unchecked_Free (p_e1.Data);
      Bytes.Append_Vector (Result, p_e2.Data);
      Bytes.Unchecked_Free (p_e2.Data);
      return (Data => Result);
   end c_bfvar_cond;

   function c_bfvar_bits
     (p_issigned : BOOL;
      p_bits : NAT)
     return BITFIELD_VARIETY is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 2);
      Bytes.Append_Vector (Result, p_issigned.Data);
      Bytes.Unchecked_Free (p_issigned.Data);
      Bytes.Append_Vector (Result, p_bits.Data);
      Bytes.Unchecked_Free (p_bits.Data);
      return (Data => Result);
   end c_bfvar_bits;

   function c_bool_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return BOOL is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 3);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_bool_apply_token;

   function c_bool_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return BOOL is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 3);
      Bytes.Append_Vector (Result, p_control.Data);
      Bytes.Unchecked_Free (p_control.Data);
      Bytes.Append_Vector (Result, p_e1.Data);
      Bytes.Unchecked_Free (p_e1.Data);
      Bytes.Append_Vector (Result, p_e2.Data);
      Bytes.Unchecked_Free (p_e2.Data);
      return (Data => Result);
   end c_bool_cond;


   function c_false return BOOL is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 3);
      return (Data => Result);
   end c_false;


   function c_true return BOOL is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 4, 3);
      return (Data => Result);
   end c_true;

   function c_make_callee_list
     (p_args : EXP_LIST)
     return CALLEES is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 2);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_args.Count);
      Bytes.Append_Vector (Result, p_args.Data);
      Bytes.Unchecked_Free (p_args.Data);
      return (Data => Result);
   end c_make_callee_list;

   function c_make_dynamic_callees
     (p_ptr : EXP;
      p_sze : EXP)
     return CALLEES is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 2);
      Bytes.Append_Vector (Result, p_ptr.Data);
      Bytes.Unchecked_Free (p_ptr.Data);
      Bytes.Append_Vector (Result, p_sze.Data);
      Bytes.Unchecked_Free (p_sze.Data);
      return (Data => Result);
   end c_make_dynamic_callees;


   function c_same_callees return CALLEES is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 2);
      return (Data => Result);
   end c_same_callees;

   function c_make_capsule
     (p_prop_names : TDFIDENT_LIST;
      p_capsule_linking : CAPSULE_LINK_LIST;
      p_external_linkage : EXTERN_LINK_LIST;
      p_groups : GROUP_LIST)
     return CAPSULE is
      Result : Bytes.Bit_Vector;
   begin
      TDF_Buildins.Append_TDFINT (Result, p_prop_names.Count);
      Bytes.Append_Vector (Result, p_prop_names.Data);
      Bytes.Unchecked_Free (p_prop_names.Data);
      TDF_Buildins.Append_TDFINT (Result, p_capsule_linking.Count);
      Bytes.Append_Vector (Result, p_capsule_linking.Data);
      Bytes.Unchecked_Free (p_capsule_linking.Data);
      TDF_Buildins.Append_TDFINT (Result, p_external_linkage.Count);
      Bytes.Append_Vector (Result, p_external_linkage.Data);
      Bytes.Unchecked_Free (p_external_linkage.Data);
      TDF_Buildins.Append_TDFINT (Result, p_groups.Count);
      Bytes.Append_Vector (Result, p_groups.Data);
      Bytes.Unchecked_Free (p_groups.Data);
      return (Data => Result);
   end c_make_capsule;

   function c_make_capsule_link
     (p_sn : TDF_Buildins.TDFIDENT;
      p_n : TDF_Buildins.TDFINT)
     return CAPSULE_LINK is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append_Vector (Result, p_sn.Data);
      Bytes.Unchecked_Free (p_sn.Data);
      Bytes.Append_Vector (Result, p_n.Data);
      Bytes.Unchecked_Free (p_n.Data);
      return (Data => Result);
   end c_make_capsule_link;

   function c_make_caselim
     (p_branch : LABEL;
      p_lower : SIGNED_NAT;
      p_upper : SIGNED_NAT)
     return CASELIM is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append_Vector (Result, p_branch.Data);
      Bytes.Unchecked_Free (p_branch.Data);
      Bytes.Append_Vector (Result, p_lower.Data);
      Bytes.Unchecked_Free (p_lower.Data);
      Bytes.Append_Vector (Result, p_upper.Data);
      Bytes.Unchecked_Free (p_upper.Data);
      return (Data => Result);
   end c_make_caselim;

   function c_diag_desc_id
     (p_src_name : TDF_Buildins.TDFSTRING;
      p_whence : SOURCEMARK;
      p_found_at : EXP;
      p_type : DIAG_TYPE)
     return DIAG_DESCRIPTOR is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 2);
      Bytes.Append_Vector (Result, p_src_name.Data);
      Bytes.Unchecked_Free (p_src_name.Data);
      Bytes.Append_Vector (Result, p_whence.Data);
      Bytes.Unchecked_Free (p_whence.Data);
      Bytes.Append_Vector (Result, p_found_at.Data);
      Bytes.Unchecked_Free (p_found_at.Data);
      Bytes.Append_Vector (Result, p_type.Data);
      Bytes.Unchecked_Free (p_type.Data);
      return (Data => Result);
   end c_diag_desc_id;

   function c_diag_desc_struct
     (p_src_name : TDF_Buildins.TDFSTRING;
      p_whence : SOURCEMARK;
      p_new_type : DIAG_TYPE)
     return DIAG_DESCRIPTOR is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 2);
      Bytes.Append_Vector (Result, p_src_name.Data);
      Bytes.Unchecked_Free (p_src_name.Data);
      Bytes.Append_Vector (Result, p_whence.Data);
      Bytes.Unchecked_Free (p_whence.Data);
      Bytes.Append_Vector (Result, p_new_type.Data);
      Bytes.Unchecked_Free (p_new_type.Data);
      return (Data => Result);
   end c_diag_desc_struct;

   function c_diag_desc_typedef
     (p_src_name : TDF_Buildins.TDFSTRING;
      p_whence : SOURCEMARK;
      p_new_type : DIAG_TYPE)
     return DIAG_DESCRIPTOR is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 2);
      Bytes.Append_Vector (Result, p_src_name.Data);
      Bytes.Unchecked_Free (p_src_name.Data);
      Bytes.Append_Vector (Result, p_whence.Data);
      Bytes.Unchecked_Free (p_whence.Data);
      Bytes.Append_Vector (Result, p_new_type.Data);
      Bytes.Unchecked_Free (p_new_type.Data);
      return (Data => Result);
   end c_diag_desc_typedef;

   function c_make_diag_field
     (p_field_name : TDF_Buildins.TDFSTRING;
      p_found_at : EXP;
      p_field_type : DIAG_TYPE)
     return DIAG_FIELD is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append_Vector (Result, p_field_name.Data);
      Bytes.Unchecked_Free (p_field_name.Data);
      Bytes.Append_Vector (Result, p_found_at.Data);
      Bytes.Unchecked_Free (p_found_at.Data);
      Bytes.Append_Vector (Result, p_field_type.Data);
      Bytes.Unchecked_Free (p_field_type.Data);
      return (Data => Result);
   end c_make_diag_field;

   function c_make_diag_tag
     (p_num : TDF_Buildins.TDFINT)
     return DIAG_TAG is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 1);
      Bytes.Append_Vector (Result, p_num.Data);
      Bytes.Unchecked_Free (p_num.Data);
      return (Data => Result);
   end c_make_diag_tag;

   function c_make_diag_tagdef
     (p_tno : TDF_Buildins.TDFINT;
      p_dtype : DIAG_TYPE)
     return DIAG_TAGDEF is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 1);
      Bytes.Append_Vector (Result, p_tno.Data);
      Bytes.Unchecked_Free (p_tno.Data);
      Bytes.Append_Vector (Result, p_dtype.Data);
      Bytes.Unchecked_Free (p_dtype.Data);
      return (Data => Result);
   end c_make_diag_tagdef;

   function c_add_diag_const
     (p_qual : DIAG_TQ)
     return DIAG_TQ is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 2);
      Bytes.Append_Vector (Result, p_qual.Data);
      Bytes.Unchecked_Free (p_qual.Data);
      return (Data => Result);
   end c_add_diag_const;

   function c_add_diag_volatile
     (p_qual : DIAG_TQ)
     return DIAG_TQ is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 2);
      Bytes.Append_Vector (Result, p_qual.Data);
      Bytes.Unchecked_Free (p_qual.Data);
      return (Data => Result);
   end c_add_diag_volatile;


   function c_diag_tq_null return DIAG_TQ is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 2);
      return (Data => Result);
   end c_diag_tq_null;

   function c_diag_type_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return DIAG_TYPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 4);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_diag_type_apply_token;

   function c_diag_array
     (p_element_type : DIAG_TYPE;
      p_stride : EXP;
      p_lower_bound : EXP;
      p_upper_bound : EXP;
      p_index_type : DIAG_TYPE)
     return DIAG_TYPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 4);
      Bytes.Append_Vector (Result, p_element_type.Data);
      Bytes.Unchecked_Free (p_element_type.Data);
      Bytes.Append_Vector (Result, p_stride.Data);
      Bytes.Unchecked_Free (p_stride.Data);
      Bytes.Append_Vector (Result, p_lower_bound.Data);
      Bytes.Unchecked_Free (p_lower_bound.Data);
      Bytes.Append_Vector (Result, p_upper_bound.Data);
      Bytes.Unchecked_Free (p_upper_bound.Data);
      Bytes.Append_Vector (Result, p_index_type.Data);
      Bytes.Unchecked_Free (p_index_type.Data);
      return (Data => Result);
   end c_diag_array;

   function c_diag_bitfield
     (p_type : DIAG_TYPE;
      p_number_of_bits : NAT)
     return DIAG_TYPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 4);
      Bytes.Append_Vector (Result, p_type.Data);
      Bytes.Unchecked_Free (p_type.Data);
      Bytes.Append_Vector (Result, p_number_of_bits.Data);
      Bytes.Unchecked_Free (p_number_of_bits.Data);
      return (Data => Result);
   end c_diag_bitfield;

   function c_diag_enum
     (p_base_type : DIAG_TYPE;
      p_enum_name : TDF_Buildins.TDFSTRING;
      p_values : ENUM_VALUES_LIST)
     return DIAG_TYPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 4, 4);
      Bytes.Append_Vector (Result, p_base_type.Data);
      Bytes.Unchecked_Free (p_base_type.Data);
      Bytes.Append_Vector (Result, p_enum_name.Data);
      Bytes.Unchecked_Free (p_enum_name.Data);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_values.Count);
      Bytes.Append_Vector (Result, p_values.Data);
      Bytes.Unchecked_Free (p_values.Data);
      return (Data => Result);
   end c_diag_enum;

   function c_diag_floating_variety
     (p_var : FLOATING_VARIETY)
     return DIAG_TYPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 5, 4);
      Bytes.Append_Vector (Result, p_var.Data);
      Bytes.Unchecked_Free (p_var.Data);
      return (Data => Result);
   end c_diag_floating_variety;

   function c_diag_loc
     (p_object : DIAG_TYPE;
      p_qualifier : DIAG_TQ)
     return DIAG_TYPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 6, 4);
      Bytes.Append_Vector (Result, p_object.Data);
      Bytes.Unchecked_Free (p_object.Data);
      Bytes.Append_Vector (Result, p_qualifier.Data);
      Bytes.Unchecked_Free (p_qualifier.Data);
      return (Data => Result);
   end c_diag_loc;

   function c_diag_proc
     (p_params : DIAG_TYPE_LIST;
      p_optional_args : BOOL;
      p_result_type : DIAG_TYPE)
     return DIAG_TYPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 7, 4);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_params.Count);
      Bytes.Append_Vector (Result, p_params.Data);
      Bytes.Unchecked_Free (p_params.Data);
      Bytes.Append_Vector (Result, p_optional_args.Data);
      Bytes.Unchecked_Free (p_optional_args.Data);
      Bytes.Append_Vector (Result, p_result_type.Data);
      Bytes.Unchecked_Free (p_result_type.Data);
      return (Data => Result);
   end c_diag_proc;

   function c_diag_ptr
     (p_object : DIAG_TYPE;
      p_qualifier : DIAG_TQ)
     return DIAG_TYPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 8, 4);
      Bytes.Append_Vector (Result, p_object.Data);
      Bytes.Unchecked_Free (p_object.Data);
      Bytes.Append_Vector (Result, p_qualifier.Data);
      Bytes.Unchecked_Free (p_qualifier.Data);
      return (Data => Result);
   end c_diag_ptr;

   function c_diag_struct
     (p_tdf_shape : SHAPE;
      p_src_name : TDF_Buildins.TDFSTRING;
      p_fields : DIAG_FIELD_LIST)
     return DIAG_TYPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 9, 4);
      Bytes.Append_Vector (Result, p_tdf_shape.Data);
      Bytes.Unchecked_Free (p_tdf_shape.Data);
      Bytes.Append_Vector (Result, p_src_name.Data);
      Bytes.Unchecked_Free (p_src_name.Data);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_fields.Count);
      Bytes.Append_Vector (Result, p_fields.Data);
      Bytes.Unchecked_Free (p_fields.Data);
      return (Data => Result);
   end c_diag_struct;


   function c_diag_type_null return DIAG_TYPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 10, 4);
      return (Data => Result);
   end c_diag_type_null;

   function c_diag_union
     (p_tdf_shape : SHAPE;
      p_src_name : TDF_Buildins.TDFSTRING;
      p_fields : DIAG_FIELD_LIST)
     return DIAG_TYPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 11, 4);
      Bytes.Append_Vector (Result, p_tdf_shape.Data);
      Bytes.Unchecked_Free (p_tdf_shape.Data);
      Bytes.Append_Vector (Result, p_src_name.Data);
      Bytes.Unchecked_Free (p_src_name.Data);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_fields.Count);
      Bytes.Append_Vector (Result, p_fields.Data);
      Bytes.Unchecked_Free (p_fields.Data);
      return (Data => Result);
   end c_diag_union;

   function c_diag_variety
     (p_var : VARIETY)
     return DIAG_TYPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 12, 4);
      Bytes.Append_Vector (Result, p_var.Data);
      Bytes.Unchecked_Free (p_var.Data);
      return (Data => Result);
   end c_diag_variety;

   function c_use_diag_tag
     (p_dtag : DIAG_TAG)
     return DIAG_TYPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 13, 4);
      Bytes.Append_Vector (Result, p_dtag.Data);
      Bytes.Unchecked_Free (p_dtag.Data);
      return (Data => Result);
   end c_use_diag_tag;

   function c_build_diagtype_unit
     (p_no_labels : TDF_Buildins.TDFINT;
      p_tagdefs : DIAG_TAGDEF_LIST)
     return DIAG_TYPE_UNIT is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append_Vector (Result, p_no_labels.Data);
      Bytes.Unchecked_Free (p_no_labels.Data);
      TDF_Buildins.Append_TDFINT (Result, p_tagdefs.Count);
      Bytes.Append_Vector (Result, p_tagdefs.Data);
      Bytes.Unchecked_Free (p_tagdefs.Data);
      return (Data => Result);
   end c_build_diagtype_unit;

   function c_build_diag_unit
     (p_no_labels : TDF_Buildins.TDFINT;
      p_descriptors : DIAG_DESCRIPTOR_LIST)
     return DIAG_UNIT is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append_Vector (Result, p_no_labels.Data);
      Bytes.Unchecked_Free (p_no_labels.Data);
      TDF_Buildins.Append_TDFINT (Result, p_descriptors.Count);
      Bytes.Append_Vector (Result, p_descriptors.Data);
      Bytes.Unchecked_Free (p_descriptors.Data);
      return (Data => Result);
   end c_build_diag_unit;

   function c_make_enum_values
     (p_value : EXP;
      p_src_name : TDF_Buildins.TDFSTRING)
     return ENUM_VALUES is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append_Vector (Result, p_value.Data);
      Bytes.Unchecked_Free (p_value.Data);
      Bytes.Append_Vector (Result, p_src_name.Data);
      Bytes.Unchecked_Free (p_src_name.Data);
      return (Data => Result);
   end c_make_enum_values;


   function c_nil_access return ERROR_CODE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 2);
      return (Data => Result);
   end c_nil_access;


   function c_overflow return ERROR_CODE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 2);
      return (Data => Result);
   end c_overflow;


   function c_stack_overflow return ERROR_CODE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 2);
      return (Data => Result);
   end c_stack_overflow;

   function c_errt_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return ERROR_TREATMENT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 3);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_errt_apply_token;

   function c_errt_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return ERROR_TREATMENT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 3);
      Bytes.Append_Vector (Result, p_control.Data);
      Bytes.Unchecked_Free (p_control.Data);
      Bytes.Append_Vector (Result, p_e1.Data);
      Bytes.Unchecked_Free (p_e1.Data);
      Bytes.Append_Vector (Result, p_e2.Data);
      Bytes.Unchecked_Free (p_e2.Data);
      return (Data => Result);
   end c_errt_cond;


   function c_continue return ERROR_TREATMENT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 3);
      return (Data => Result);
   end c_continue;

   function c_error_jump
     (p_lab : LABEL)
     return ERROR_TREATMENT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 4, 3);
      Bytes.Append_Vector (Result, p_lab.Data);
      Bytes.Unchecked_Free (p_lab.Data);
      return (Data => Result);
   end c_error_jump;

   function c_trap
     (p_trap_list : ERROR_CODE_LIST)
     return ERROR_TREATMENT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 5, 3);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_trap_list.Count);
      Bytes.Append_Vector (Result, p_trap_list.Data);
      Bytes.Unchecked_Free (p_trap_list.Data);
      return (Data => Result);
   end c_trap;


   function c_wrap return ERROR_TREATMENT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 6, 3);
      return (Data => Result);
   end c_wrap;


   function c_impossible return ERROR_TREATMENT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 7, 3);
      return (Data => Result);
   end c_impossible;

   function c_exp_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 7);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_exp_apply_token;

   function c_exp_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 7);
      Bytes.Append_Vector (Result, p_control.Data);
      Bytes.Unchecked_Free (p_control.Data);
      Bytes.Append_Vector (Result, p_e1.Data);
      Bytes.Unchecked_Free (p_e1.Data);
      Bytes.Append_Vector (Result, p_e2.Data);
      Bytes.Unchecked_Free (p_e2.Data);
      return (Data => Result);
   end c_exp_cond;

   function c_abs
     (p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 7);
      Bytes.Append_Vector (Result, p_ov_err.Data);
      Bytes.Unchecked_Free (p_ov_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_abs;

   function c_add_to_ptr
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 4, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_add_to_ptr;

   function c_and
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 5, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_and;

   function c_apply_proc
     (p_result_shape : SHAPE;
      p_p : EXP;
      p_params : EXP_LIST;
      p_var_param : EXP_OPTION)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 6, 7);
      Bytes.Append_Vector (Result, p_result_shape.Data);
      Bytes.Unchecked_Free (p_result_shape.Data);
      Bytes.Append_Vector (Result, p_p.Data);
      Bytes.Unchecked_Free (p_p.Data);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_params.Count);
      Bytes.Append_Vector (Result, p_params.Data);
      Bytes.Unchecked_Free (p_params.Data);
      Bytes.Append_Vector (Result, p_var_param.Data);
      Bytes.Unchecked_Free (p_var_param.Data);
      return (Data => Result);
   end c_apply_proc;

   function c_apply_general_proc
     (p_result_shape : SHAPE;
      p_prcprops : PROCPROPS_OPTION;
      p_p : EXP;
      p_caller_params_intro : OTAGEXP_LIST;
      p_callee_params : CALLEES;
      p_postlude : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 7, 7);
      Bytes.Append_Vector (Result, p_result_shape.Data);
      Bytes.Unchecked_Free (p_result_shape.Data);
      Bytes.Append_Vector (Result, p_prcprops.Data);
      Bytes.Unchecked_Free (p_prcprops.Data);
      Bytes.Append_Vector (Result, p_p.Data);
      Bytes.Unchecked_Free (p_p.Data);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_caller_params_intro.Count);
      Bytes.Append_Vector (Result, p_caller_params_intro.Data);
      Bytes.Unchecked_Free (p_caller_params_intro.Data);
      Bytes.Append_Vector (Result, p_callee_params.Data);
      Bytes.Unchecked_Free (p_callee_params.Data);
      Bytes.Append_Vector (Result, p_postlude.Data);
      Bytes.Unchecked_Free (p_postlude.Data);
      return (Data => Result);
   end c_apply_general_proc;

   function c_assign
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 8, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_assign;

   function c_assign_with_mode
     (p_md : TRANSFER_MODE;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 9, 7);
      Bytes.Append_Vector (Result, p_md.Data);
      Bytes.Unchecked_Free (p_md.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_assign_with_mode;

   function c_bitfield_assign
     (p_arg1 : EXP;
      p_arg2 : EXP;
      p_arg3 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 10, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      Bytes.Append_Vector (Result, p_arg3.Data);
      Bytes.Unchecked_Free (p_arg3.Data);
      return (Data => Result);
   end c_bitfield_assign;

   function c_bitfield_assign_with_mode
     (p_md : TRANSFER_MODE;
      p_arg1 : EXP;
      p_arg2 : EXP;
      p_arg3 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 11, 7);
      Bytes.Append_Vector (Result, p_md.Data);
      Bytes.Unchecked_Free (p_md.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      Bytes.Append_Vector (Result, p_arg3.Data);
      Bytes.Unchecked_Free (p_arg3.Data);
      return (Data => Result);
   end c_bitfield_assign_with_mode;

   function c_bitfield_contents
     (p_v : BITFIELD_VARIETY;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 12, 7);
      Bytes.Append_Vector (Result, p_v.Data);
      Bytes.Unchecked_Free (p_v.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_bitfield_contents;

   function c_bitfield_contents_with_mode
     (p_md : TRANSFER_MODE;
      p_v : BITFIELD_VARIETY;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 13, 7);
      Bytes.Append_Vector (Result, p_md.Data);
      Bytes.Unchecked_Free (p_md.Data);
      Bytes.Append_Vector (Result, p_v.Data);
      Bytes.Unchecked_Free (p_v.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_bitfield_contents_with_mode;

   function c_case
     (p_exhaustive : BOOL;
      p_control : EXP;
      p_branches : CASELIM_LIST)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 14, 7);
      Bytes.Append_Vector (Result, p_exhaustive.Data);
      Bytes.Unchecked_Free (p_exhaustive.Data);
      Bytes.Append_Vector (Result, p_control.Data);
      Bytes.Unchecked_Free (p_control.Data);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_branches.Count);
      Bytes.Append_Vector (Result, p_branches.Data);
      Bytes.Unchecked_Free (p_branches.Data);
      return (Data => Result);
   end c_case;

   function c_change_bitfield_to_int
     (p_v : VARIETY;
      p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 15, 7);
      Bytes.Append_Vector (Result, p_v.Data);
      Bytes.Unchecked_Free (p_v.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_change_bitfield_to_int;

   function c_change_floating_variety
     (p_flpt_err : ERROR_TREATMENT;
      p_r : FLOATING_VARIETY;
      p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 16, 7);
      Bytes.Append_Vector (Result, p_flpt_err.Data);
      Bytes.Unchecked_Free (p_flpt_err.Data);
      Bytes.Append_Vector (Result, p_r.Data);
      Bytes.Unchecked_Free (p_r.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_change_floating_variety;

   function c_change_variety
     (p_ov_err : ERROR_TREATMENT;
      p_r : VARIETY;
      p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 17, 7);
      Bytes.Append_Vector (Result, p_ov_err.Data);
      Bytes.Unchecked_Free (p_ov_err.Data);
      Bytes.Append_Vector (Result, p_r.Data);
      Bytes.Unchecked_Free (p_r.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_change_variety;

   function c_change_int_to_bitfield
     (p_bv : BITFIELD_VARIETY;
      p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 18, 7);
      Bytes.Append_Vector (Result, p_bv.Data);
      Bytes.Unchecked_Free (p_bv.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_change_int_to_bitfield;

   function c_complex_conjugate
     (p_c : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 19, 7);
      Bytes.Append_Vector (Result, p_c.Data);
      Bytes.Unchecked_Free (p_c.Data);
      return (Data => Result);
   end c_complex_conjugate;

   function c_component
     (p_sha : SHAPE;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 20, 7);
      Bytes.Append_Vector (Result, p_sha.Data);
      Bytes.Unchecked_Free (p_sha.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_component;

   function c_concat_nof
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 21, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_concat_nof;

   function c_conditional
     (p_alt_label_intro : LABEL;
      p_first : EXP;
      p_alt : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 22, 7);
      Bytes.Append_Vector (Result, p_alt_label_intro.Data);
      Bytes.Unchecked_Free (p_alt_label_intro.Data);
      Bytes.Append_Vector (Result, p_first.Data);
      Bytes.Unchecked_Free (p_first.Data);
      Bytes.Append_Vector (Result, p_alt.Data);
      Bytes.Unchecked_Free (p_alt.Data);
      return (Data => Result);
   end c_conditional;

   function c_contents
     (p_s : SHAPE;
      p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 23, 7);
      Bytes.Append_Vector (Result, p_s.Data);
      Bytes.Unchecked_Free (p_s.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_contents;

   function c_contents_with_mode
     (p_md : TRANSFER_MODE;
      p_s : SHAPE;
      p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 24, 7);
      Bytes.Append_Vector (Result, p_md.Data);
      Bytes.Unchecked_Free (p_md.Data);
      Bytes.Append_Vector (Result, p_s.Data);
      Bytes.Unchecked_Free (p_s.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_contents_with_mode;


   function c_current_env return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 25, 7);
      return (Data => Result);
   end c_current_env;

   function c_div0
     (p_div_by_zero_err : ERROR_TREATMENT;
      p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 26, 7);
      Bytes.Append_Vector (Result, p_div_by_zero_err.Data);
      Bytes.Unchecked_Free (p_div_by_zero_err.Data);
      Bytes.Append_Vector (Result, p_ov_err.Data);
      Bytes.Unchecked_Free (p_ov_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_div0;

   function c_div1
     (p_div_by_zero_err : ERROR_TREATMENT;
      p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 27, 7);
      Bytes.Append_Vector (Result, p_div_by_zero_err.Data);
      Bytes.Unchecked_Free (p_div_by_zero_err.Data);
      Bytes.Append_Vector (Result, p_ov_err.Data);
      Bytes.Unchecked_Free (p_ov_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_div1;

   function c_div2
     (p_div_by_zero_err : ERROR_TREATMENT;
      p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 28, 7);
      Bytes.Append_Vector (Result, p_div_by_zero_err.Data);
      Bytes.Unchecked_Free (p_div_by_zero_err.Data);
      Bytes.Append_Vector (Result, p_ov_err.Data);
      Bytes.Unchecked_Free (p_ov_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_div2;

   function c_env_offset
     (p_fa : ALIGNMENT;
      p_y : ALIGNMENT;
      p_t : TAG)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 29, 7);
      Bytes.Append_Vector (Result, p_fa.Data);
      Bytes.Unchecked_Free (p_fa.Data);
      Bytes.Append_Vector (Result, p_y.Data);
      Bytes.Unchecked_Free (p_y.Data);
      Bytes.Append_Vector (Result, p_t.Data);
      Bytes.Unchecked_Free (p_t.Data);
      return (Data => Result);
   end c_env_offset;

   function c_env_size
     (p_proctag : TAG)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 30, 7);
      Bytes.Append_Vector (Result, p_proctag.Data);
      Bytes.Unchecked_Free (p_proctag.Data);
      return (Data => Result);
   end c_env_size;

   function c_fail_installer
     (p_message : STRING)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 31, 7);
      Bytes.Append_Vector (Result, p_message.Data);
      Bytes.Unchecked_Free (p_message.Data);
      return (Data => Result);
   end c_fail_installer;

   function c_float_int
     (p_flpt_err : ERROR_TREATMENT;
      p_f : FLOATING_VARIETY;
      p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 32, 7);
      Bytes.Append_Vector (Result, p_flpt_err.Data);
      Bytes.Unchecked_Free (p_flpt_err.Data);
      Bytes.Append_Vector (Result, p_f.Data);
      Bytes.Unchecked_Free (p_f.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_float_int;

   function c_floating_abs
     (p_flpt_err : ERROR_TREATMENT;
      p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 33, 7);
      Bytes.Append_Vector (Result, p_flpt_err.Data);
      Bytes.Unchecked_Free (p_flpt_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_floating_abs;

   function c_floating_div
     (p_flpt_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 34, 7);
      Bytes.Append_Vector (Result, p_flpt_err.Data);
      Bytes.Unchecked_Free (p_flpt_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_floating_div;

   function c_floating_minus
     (p_flpt_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 35, 7);
      Bytes.Append_Vector (Result, p_flpt_err.Data);
      Bytes.Unchecked_Free (p_flpt_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_floating_minus;

   function c_floating_maximum
     (p_flpt_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 36, 7);
      Bytes.Append_Vector (Result, p_flpt_err.Data);
      Bytes.Unchecked_Free (p_flpt_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_floating_maximum;

   function c_floating_minimum
     (p_flpt_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 37, 7);
      Bytes.Append_Vector (Result, p_flpt_err.Data);
      Bytes.Unchecked_Free (p_flpt_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_floating_minimum;

   function c_floating_mult
     (p_flpt_err : ERROR_TREATMENT;
      p_arg1 : EXP_LIST)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 38, 7);
      Bytes.Append_Vector (Result, p_flpt_err.Data);
      Bytes.Unchecked_Free (p_flpt_err.Data);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_arg1.Count);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_floating_mult;

   function c_floating_negate
     (p_flpt_err : ERROR_TREATMENT;
      p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 39, 7);
      Bytes.Append_Vector (Result, p_flpt_err.Data);
      Bytes.Unchecked_Free (p_flpt_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_floating_negate;

   function c_floating_plus
     (p_flpt_err : ERROR_TREATMENT;
      p_arg1 : EXP_LIST)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 40, 7);
      Bytes.Append_Vector (Result, p_flpt_err.Data);
      Bytes.Unchecked_Free (p_flpt_err.Data);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_arg1.Count);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_floating_plus;

   function c_floating_power
     (p_flpt_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 41, 7);
      Bytes.Append_Vector (Result, p_flpt_err.Data);
      Bytes.Unchecked_Free (p_flpt_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_floating_power;

   function c_floating_test
     (p_prob : NAT_OPTION;
      p_flpt_err : ERROR_TREATMENT;
      p_nt : NTEST;
      p_dest : LABEL;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 42, 7);
      Bytes.Append_Vector (Result, p_prob.Data);
      Bytes.Unchecked_Free (p_prob.Data);
      Bytes.Append_Vector (Result, p_flpt_err.Data);
      Bytes.Unchecked_Free (p_flpt_err.Data);
      Bytes.Append_Vector (Result, p_nt.Data);
      Bytes.Unchecked_Free (p_nt.Data);
      Bytes.Append_Vector (Result, p_dest.Data);
      Bytes.Unchecked_Free (p_dest.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_floating_test;

   function c_goto
     (p_dest : LABEL)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 43, 7);
      Bytes.Append_Vector (Result, p_dest.Data);
      Bytes.Unchecked_Free (p_dest.Data);
      return (Data => Result);
   end c_goto;

   function c_goto_local_lv
     (p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 44, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_goto_local_lv;

   function c_identify
     (p_opt_access : ACCESS_OPTION;
      p_name_intro : TAG;
      p_definition : EXP;
      p_body : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 45, 7);
      Bytes.Append_Vector (Result, p_opt_access.Data);
      Bytes.Unchecked_Free (p_opt_access.Data);
      Bytes.Append_Vector (Result, p_name_intro.Data);
      Bytes.Unchecked_Free (p_name_intro.Data);
      Bytes.Append_Vector (Result, p_definition.Data);
      Bytes.Unchecked_Free (p_definition.Data);
      Bytes.Append_Vector (Result, p_body.Data);
      Bytes.Unchecked_Free (p_body.Data);
      return (Data => Result);
   end c_identify;

   function c_ignorable
     (p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 46, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_ignorable;

   function c_imaginary_part
     (p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 47, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_imaginary_part;

   function c_initial_value
     (p_init : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 48, 7);
      Bytes.Append_Vector (Result, p_init.Data);
      Bytes.Unchecked_Free (p_init.Data);
      return (Data => Result);
   end c_initial_value;

   function c_integer_test
     (p_prob : NAT_OPTION;
      p_nt : NTEST;
      p_dest : LABEL;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 49, 7);
      Bytes.Append_Vector (Result, p_prob.Data);
      Bytes.Unchecked_Free (p_prob.Data);
      Bytes.Append_Vector (Result, p_nt.Data);
      Bytes.Unchecked_Free (p_nt.Data);
      Bytes.Append_Vector (Result, p_dest.Data);
      Bytes.Unchecked_Free (p_dest.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_integer_test;

   function c_labelled
     (p_placelabs_intro : LABEL_LIST;
      p_starter : EXP;
      p_places : EXP_LIST)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 50, 7);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_placelabs_intro.Count);
      Bytes.Append_Vector (Result, p_placelabs_intro.Data);
      Bytes.Unchecked_Free (p_placelabs_intro.Data);
      Bytes.Append_Vector (Result, p_starter.Data);
      Bytes.Unchecked_Free (p_starter.Data);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_places.Count);
      Bytes.Append_Vector (Result, p_places.Data);
      Bytes.Unchecked_Free (p_places.Data);
      return (Data => Result);
   end c_labelled;

   function c_last_local
     (p_x : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 51, 7);
      Bytes.Append_Vector (Result, p_x.Data);
      Bytes.Unchecked_Free (p_x.Data);
      return (Data => Result);
   end c_last_local;

   function c_local_alloc
     (p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 52, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_local_alloc;

   function c_local_alloc_check
     (p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 53, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_local_alloc_check;

   function c_local_free
     (p_a : EXP;
      p_p : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 54, 7);
      Bytes.Append_Vector (Result, p_a.Data);
      Bytes.Unchecked_Free (p_a.Data);
      Bytes.Append_Vector (Result, p_p.Data);
      Bytes.Unchecked_Free (p_p.Data);
      return (Data => Result);
   end c_local_free;


   function c_local_free_all return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 55, 7);
      return (Data => Result);
   end c_local_free_all;

   function c_long_jump
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 56, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_long_jump;

   function c_make_complex
     (p_c : FLOATING_VARIETY;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 57, 7);
      Bytes.Append_Vector (Result, p_c.Data);
      Bytes.Unchecked_Free (p_c.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_make_complex;

   function c_make_compound
     (p_arg1 : EXP;
      p_arg2 : EXP_LIST)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 58, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_arg2.Count);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_make_compound;

   function c_make_floating
     (p_f : FLOATING_VARIETY;
      p_rm : ROUNDING_MODE;
      p_negative : BOOL;
      p_mantissa : STRING;
      p_base : NAT;
      p_exponent : SIGNED_NAT)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 59, 7);
      Bytes.Append_Vector (Result, p_f.Data);
      Bytes.Unchecked_Free (p_f.Data);
      Bytes.Append_Vector (Result, p_rm.Data);
      Bytes.Unchecked_Free (p_rm.Data);
      Bytes.Append_Vector (Result, p_negative.Data);
      Bytes.Unchecked_Free (p_negative.Data);
      Bytes.Append_Vector (Result, p_mantissa.Data);
      Bytes.Unchecked_Free (p_mantissa.Data);
      Bytes.Append_Vector (Result, p_base.Data);
      Bytes.Unchecked_Free (p_base.Data);
      Bytes.Append_Vector (Result, p_exponent.Data);
      Bytes.Unchecked_Free (p_exponent.Data);
      return (Data => Result);
   end c_make_floating;

   function c_make_general_proc
     (p_result_shape : SHAPE;
      p_prcprops : PROCPROPS_OPTION;
      p_caller_intro : TAGSHACC_LIST;
      p_callee_intro : TAGSHACC_LIST;
      p_body : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 60, 7);
      Bytes.Append_Vector (Result, p_result_shape.Data);
      Bytes.Unchecked_Free (p_result_shape.Data);
      Bytes.Append_Vector (Result, p_prcprops.Data);
      Bytes.Unchecked_Free (p_prcprops.Data);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_caller_intro.Count);
      Bytes.Append_Vector (Result, p_caller_intro.Data);
      Bytes.Unchecked_Free (p_caller_intro.Data);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_callee_intro.Count);
      Bytes.Append_Vector (Result, p_callee_intro.Data);
      Bytes.Unchecked_Free (p_callee_intro.Data);
      Bytes.Append_Vector (Result, p_body.Data);
      Bytes.Unchecked_Free (p_body.Data);
      return (Data => Result);
   end c_make_general_proc;

   function c_make_int
     (p_v : VARIETY;
      p_value : SIGNED_NAT)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 61, 7);
      Bytes.Append_Vector (Result, p_v.Data);
      Bytes.Unchecked_Free (p_v.Data);
      Bytes.Append_Vector (Result, p_value.Data);
      Bytes.Unchecked_Free (p_value.Data);
      return (Data => Result);
   end c_make_int;

   function c_make_local_lv
     (p_lab : LABEL)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 62, 7);
      Bytes.Append_Vector (Result, p_lab.Data);
      Bytes.Unchecked_Free (p_lab.Data);
      return (Data => Result);
   end c_make_local_lv;

   function c_make_nof
     (p_arg1 : EXP_LIST)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 63, 7);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_arg1.Count);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_make_nof;

   function c_make_nof_int
     (p_v : VARIETY;
      p_str : STRING)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 64, 7);
      Bytes.Append_Vector (Result, p_v.Data);
      Bytes.Unchecked_Free (p_v.Data);
      Bytes.Append_Vector (Result, p_str.Data);
      Bytes.Unchecked_Free (p_str.Data);
      return (Data => Result);
   end c_make_nof_int;


   function c_make_null_local_lv return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 65, 7);
      return (Data => Result);
   end c_make_null_local_lv;


   function c_make_null_proc return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 66, 7);
      return (Data => Result);
   end c_make_null_proc;

   function c_make_null_ptr
     (p_a : ALIGNMENT)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 67, 7);
      Bytes.Append_Vector (Result, p_a.Data);
      Bytes.Unchecked_Free (p_a.Data);
      return (Data => Result);
   end c_make_null_ptr;

   function c_make_proc
     (p_result_shape : SHAPE;
      p_params_intro : TAGSHACC_LIST;
      p_var_intro : TAGACC_OPTION;
      p_body : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 68, 7);
      Bytes.Append_Vector (Result, p_result_shape.Data);
      Bytes.Unchecked_Free (p_result_shape.Data);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_params_intro.Count);
      Bytes.Append_Vector (Result, p_params_intro.Data);
      Bytes.Unchecked_Free (p_params_intro.Data);
      Bytes.Append_Vector (Result, p_var_intro.Data);
      Bytes.Unchecked_Free (p_var_intro.Data);
      Bytes.Append_Vector (Result, p_body.Data);
      Bytes.Unchecked_Free (p_body.Data);
      return (Data => Result);
   end c_make_proc;

   function c_make_stack_limit
     (p_stack_base : EXP;
      p_frame_size : EXP;
      p_alloc_size : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 116, 7);
      Bytes.Append_Vector (Result, p_stack_base.Data);
      Bytes.Unchecked_Free (p_stack_base.Data);
      Bytes.Append_Vector (Result, p_frame_size.Data);
      Bytes.Unchecked_Free (p_frame_size.Data);
      Bytes.Append_Vector (Result, p_alloc_size.Data);
      Bytes.Unchecked_Free (p_alloc_size.Data);
      return (Data => Result);
   end c_make_stack_limit;


   function c_make_top return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 69, 7);
      return (Data => Result);
   end c_make_top;

   function c_make_value
     (p_s : SHAPE)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 70, 7);
      Bytes.Append_Vector (Result, p_s.Data);
      Bytes.Unchecked_Free (p_s.Data);
      return (Data => Result);
   end c_make_value;

   function c_maximum
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 71, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_maximum;

   function c_minimum
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 72, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_minimum;

   function c_minus
     (p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 73, 7);
      Bytes.Append_Vector (Result, p_ov_err.Data);
      Bytes.Unchecked_Free (p_ov_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_minus;

   function c_move_some
     (p_md : TRANSFER_MODE;
      p_arg1 : EXP;
      p_arg2 : EXP;
      p_arg3 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 74, 7);
      Bytes.Append_Vector (Result, p_md.Data);
      Bytes.Unchecked_Free (p_md.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      Bytes.Append_Vector (Result, p_arg3.Data);
      Bytes.Unchecked_Free (p_arg3.Data);
      return (Data => Result);
   end c_move_some;

   function c_mult
     (p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 75, 7);
      Bytes.Append_Vector (Result, p_ov_err.Data);
      Bytes.Unchecked_Free (p_ov_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_mult;

   function c_n_copies
     (p_n : NAT;
      p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 76, 7);
      Bytes.Append_Vector (Result, p_n.Data);
      Bytes.Unchecked_Free (p_n.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_n_copies;

   function c_negate
     (p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 77, 7);
      Bytes.Append_Vector (Result, p_ov_err.Data);
      Bytes.Unchecked_Free (p_ov_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_negate;

   function c_not
     (p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 78, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_not;

   function c_obtain_tag
     (p_t : TAG)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 79, 7);
      Bytes.Append_Vector (Result, p_t.Data);
      Bytes.Unchecked_Free (p_t.Data);
      return (Data => Result);
   end c_obtain_tag;

   function c_offset_add
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 80, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_offset_add;

   function c_offset_div
     (p_v : VARIETY;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 81, 7);
      Bytes.Append_Vector (Result, p_v.Data);
      Bytes.Unchecked_Free (p_v.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_offset_div;

   function c_offset_div_by_int
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 82, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_offset_div_by_int;

   function c_offset_max
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 83, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_offset_max;

   function c_offset_mult
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 84, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_offset_mult;

   function c_offset_negate
     (p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 85, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_offset_negate;

   function c_offset_pad
     (p_a : ALIGNMENT;
      p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 86, 7);
      Bytes.Append_Vector (Result, p_a.Data);
      Bytes.Unchecked_Free (p_a.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_offset_pad;

   function c_offset_subtract
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 87, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_offset_subtract;

   function c_offset_test
     (p_prob : NAT_OPTION;
      p_nt : NTEST;
      p_dest : LABEL;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 88, 7);
      Bytes.Append_Vector (Result, p_prob.Data);
      Bytes.Unchecked_Free (p_prob.Data);
      Bytes.Append_Vector (Result, p_nt.Data);
      Bytes.Unchecked_Free (p_nt.Data);
      Bytes.Append_Vector (Result, p_dest.Data);
      Bytes.Unchecked_Free (p_dest.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_offset_test;

   function c_offset_zero
     (p_a : ALIGNMENT)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 89, 7);
      Bytes.Append_Vector (Result, p_a.Data);
      Bytes.Unchecked_Free (p_a.Data);
      return (Data => Result);
   end c_offset_zero;

   function c_or
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 90, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_or;

   function c_plus
     (p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 91, 7);
      Bytes.Append_Vector (Result, p_ov_err.Data);
      Bytes.Unchecked_Free (p_ov_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_plus;

   function c_pointer_test
     (p_prob : NAT_OPTION;
      p_nt : NTEST;
      p_dest : LABEL;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 92, 7);
      Bytes.Append_Vector (Result, p_prob.Data);
      Bytes.Unchecked_Free (p_prob.Data);
      Bytes.Append_Vector (Result, p_nt.Data);
      Bytes.Unchecked_Free (p_nt.Data);
      Bytes.Append_Vector (Result, p_dest.Data);
      Bytes.Unchecked_Free (p_dest.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_pointer_test;

   function c_power
     (p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 93, 7);
      Bytes.Append_Vector (Result, p_ov_err.Data);
      Bytes.Unchecked_Free (p_ov_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_power;

   function c_proc_test
     (p_prob : NAT_OPTION;
      p_nt : NTEST;
      p_dest : LABEL;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 94, 7);
      Bytes.Append_Vector (Result, p_prob.Data);
      Bytes.Unchecked_Free (p_prob.Data);
      Bytes.Append_Vector (Result, p_nt.Data);
      Bytes.Unchecked_Free (p_nt.Data);
      Bytes.Append_Vector (Result, p_dest.Data);
      Bytes.Unchecked_Free (p_dest.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_proc_test;

   function c_profile
     (p_uses : NAT)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 95, 7);
      Bytes.Append_Vector (Result, p_uses.Data);
      Bytes.Unchecked_Free (p_uses.Data);
      return (Data => Result);
   end c_profile;

   function c_real_part
     (p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 96, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_real_part;

   function c_rem0
     (p_div_by_zero_err : ERROR_TREATMENT;
      p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 97, 7);
      Bytes.Append_Vector (Result, p_div_by_zero_err.Data);
      Bytes.Unchecked_Free (p_div_by_zero_err.Data);
      Bytes.Append_Vector (Result, p_ov_err.Data);
      Bytes.Unchecked_Free (p_ov_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_rem0;

   function c_rem1
     (p_div_by_zero_err : ERROR_TREATMENT;
      p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 98, 7);
      Bytes.Append_Vector (Result, p_div_by_zero_err.Data);
      Bytes.Unchecked_Free (p_div_by_zero_err.Data);
      Bytes.Append_Vector (Result, p_ov_err.Data);
      Bytes.Unchecked_Free (p_ov_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_rem1;

   function c_rem2
     (p_div_by_zero_err : ERROR_TREATMENT;
      p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 99, 7);
      Bytes.Append_Vector (Result, p_div_by_zero_err.Data);
      Bytes.Unchecked_Free (p_div_by_zero_err.Data);
      Bytes.Append_Vector (Result, p_ov_err.Data);
      Bytes.Unchecked_Free (p_ov_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_rem2;

   function c_repeat
     (p_repeat_label_intro : LABEL;
      p_start : EXP;
      p_body : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 100, 7);
      Bytes.Append_Vector (Result, p_repeat_label_intro.Data);
      Bytes.Unchecked_Free (p_repeat_label_intro.Data);
      Bytes.Append_Vector (Result, p_start.Data);
      Bytes.Unchecked_Free (p_start.Data);
      Bytes.Append_Vector (Result, p_body.Data);
      Bytes.Unchecked_Free (p_body.Data);
      return (Data => Result);
   end c_repeat;

   function c_return
     (p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 101, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_return;

   function c_return_to_label
     (p_lab_val : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 102, 7);
      Bytes.Append_Vector (Result, p_lab_val.Data);
      Bytes.Unchecked_Free (p_lab_val.Data);
      return (Data => Result);
   end c_return_to_label;

   function c_round_with_mode
     (p_flpt_err : ERROR_TREATMENT;
      p_mode : ROUNDING_MODE;
      p_r : VARIETY;
      p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 103, 7);
      Bytes.Append_Vector (Result, p_flpt_err.Data);
      Bytes.Unchecked_Free (p_flpt_err.Data);
      Bytes.Append_Vector (Result, p_mode.Data);
      Bytes.Unchecked_Free (p_mode.Data);
      Bytes.Append_Vector (Result, p_r.Data);
      Bytes.Unchecked_Free (p_r.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_round_with_mode;

   function c_rotate_left
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 104, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_rotate_left;

   function c_rotate_right
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 105, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_rotate_right;

   function c_sequence
     (p_statements : EXP_LIST;
      p_result : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 106, 7);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_statements.Count);
      Bytes.Append_Vector (Result, p_statements.Data);
      Bytes.Unchecked_Free (p_statements.Data);
      Bytes.Append_Vector (Result, p_result.Data);
      Bytes.Unchecked_Free (p_result.Data);
      return (Data => Result);
   end c_sequence;

   function c_set_stack_limit
     (p_lim : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 107, 7);
      Bytes.Append_Vector (Result, p_lim.Data);
      Bytes.Unchecked_Free (p_lim.Data);
      return (Data => Result);
   end c_set_stack_limit;

   function c_shape_offset
     (p_s : SHAPE)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 108, 7);
      Bytes.Append_Vector (Result, p_s.Data);
      Bytes.Unchecked_Free (p_s.Data);
      return (Data => Result);
   end c_shape_offset;

   function c_shift_left
     (p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 109, 7);
      Bytes.Append_Vector (Result, p_ov_err.Data);
      Bytes.Unchecked_Free (p_ov_err.Data);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_shift_left;

   function c_shift_right
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 110, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_shift_right;

   function c_subtract_ptrs
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 111, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_subtract_ptrs;

   function c_tail_call
     (p_prcprops : PROCPROPS_OPTION;
      p_p : EXP;
      p_callee_params : CALLEES)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 112, 7);
      Bytes.Append_Vector (Result, p_prcprops.Data);
      Bytes.Unchecked_Free (p_prcprops.Data);
      Bytes.Append_Vector (Result, p_p.Data);
      Bytes.Unchecked_Free (p_p.Data);
      Bytes.Append_Vector (Result, p_callee_params.Data);
      Bytes.Unchecked_Free (p_callee_params.Data);
      return (Data => Result);
   end c_tail_call;

   function c_untidy_return
     (p_arg1 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 113, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      return (Data => Result);
   end c_untidy_return;

   function c_variable
     (p_opt_access : ACCESS_OPTION;
      p_name_intro : TAG;
      p_init : EXP;
      p_body : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 114, 7);
      Bytes.Append_Vector (Result, p_opt_access.Data);
      Bytes.Unchecked_Free (p_opt_access.Data);
      Bytes.Append_Vector (Result, p_name_intro.Data);
      Bytes.Unchecked_Free (p_name_intro.Data);
      Bytes.Append_Vector (Result, p_init.Data);
      Bytes.Unchecked_Free (p_init.Data);
      Bytes.Append_Vector (Result, p_body.Data);
      Bytes.Unchecked_Free (p_body.Data);
      return (Data => Result);
   end c_variable;

   function c_xor
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 115, 7);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_xor;

   function c_make_extern_link
     (p_el : LINKEXTERN_LIST)
     return EXTERN_LINK is
      Result : Bytes.Bit_Vector;
   begin
      TDF_Buildins.Append_TDFINT (Result, p_el.Count);
      Bytes.Append_Vector (Result, p_el.Data);
      Bytes.Unchecked_Free (p_el.Data);
      return (Data => Result);
   end c_make_extern_link;

   function c_string_extern
     (p_s : TDF_Buildins.TDFIDENT)
     return EXTERNAL is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 2);
      Bytes.Align (Result);
      Bytes.Append_Vector (Result, p_s.Data);
      Bytes.Unchecked_Free (p_s.Data);
      return (Data => Result);
   end c_string_extern;

   function c_unique_extern
     (p_u : UNIQUE)
     return EXTERNAL is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 2);
      Bytes.Align (Result);
      Bytes.Append_Vector (Result, p_u.Data);
      Bytes.Unchecked_Free (p_u.Data);
      return (Data => Result);
   end c_unique_extern;

   function c_chain_extern
     (p_s : TDF_Buildins.TDFIDENT;
      p_prev : TDF_Buildins.TDFINT)
     return EXTERNAL is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 2);
      Bytes.Align (Result);
      Bytes.Append_Vector (Result, p_s.Data);
      Bytes.Unchecked_Free (p_s.Data);
      Bytes.Append_Vector (Result, p_prev.Data);
      Bytes.Unchecked_Free (p_prev.Data);
      return (Data => Result);
   end c_chain_extern;

   function c_filename_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return FILENAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 2);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_filename_apply_token;

   function c_make_filename
     (p_date : NAT;
      p_machine : TDF_Buildins.TDFSTRING;
      p_file : TDF_Buildins.TDFSTRING)
     return FILENAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 2);
      Bytes.Append_Vector (Result, p_date.Data);
      Bytes.Unchecked_Free (p_date.Data);
      Bytes.Append_Vector (Result, p_machine.Data);
      Bytes.Unchecked_Free (p_machine.Data);
      Bytes.Append_Vector (Result, p_file.Data);
      Bytes.Unchecked_Free (p_file.Data);
      return (Data => Result);
   end c_make_filename;

   function c_flvar_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return FLOATING_VARIETY is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 3);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_flvar_apply_token;

   function c_flvar_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return FLOATING_VARIETY is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 3);
      Bytes.Append_Vector (Result, p_control.Data);
      Bytes.Unchecked_Free (p_control.Data);
      Bytes.Append_Vector (Result, p_e1.Data);
      Bytes.Unchecked_Free (p_e1.Data);
      Bytes.Append_Vector (Result, p_e2.Data);
      Bytes.Unchecked_Free (p_e2.Data);
      return (Data => Result);
   end c_flvar_cond;

   function c_flvar_parms
     (p_base : NAT;
      p_mantissa_digits : NAT;
      p_minimum_exponent : NAT;
      p_maximum_exponent : NAT)
     return FLOATING_VARIETY is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 3);
      Bytes.Append_Vector (Result, p_base.Data);
      Bytes.Unchecked_Free (p_base.Data);
      Bytes.Append_Vector (Result, p_mantissa_digits.Data);
      Bytes.Unchecked_Free (p_mantissa_digits.Data);
      Bytes.Append_Vector (Result, p_minimum_exponent.Data);
      Bytes.Unchecked_Free (p_minimum_exponent.Data);
      Bytes.Append_Vector (Result, p_maximum_exponent.Data);
      Bytes.Unchecked_Free (p_maximum_exponent.Data);
      return (Data => Result);
   end c_flvar_parms;

   function c_complex_parms
     (p_base : NAT;
      p_mantissa_digits : NAT;
      p_minimum_exponent : NAT;
      p_maximum_exponent : NAT)
     return FLOATING_VARIETY is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 4, 3);
      Bytes.Append_Vector (Result, p_base.Data);
      Bytes.Unchecked_Free (p_base.Data);
      Bytes.Append_Vector (Result, p_mantissa_digits.Data);
      Bytes.Unchecked_Free (p_mantissa_digits.Data);
      Bytes.Append_Vector (Result, p_minimum_exponent.Data);
      Bytes.Unchecked_Free (p_minimum_exponent.Data);
      Bytes.Append_Vector (Result, p_maximum_exponent.Data);
      Bytes.Unchecked_Free (p_maximum_exponent.Data);
      return (Data => Result);
   end c_complex_parms;

   function c_float_of_complex
     (p_csh : SHAPE)
     return FLOATING_VARIETY is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 5, 3);
      Bytes.Append_Vector (Result, p_csh.Data);
      Bytes.Unchecked_Free (p_csh.Data);
      return (Data => Result);
   end c_float_of_complex;

   function c_complex_of_float
     (p_fsh : SHAPE)
     return FLOATING_VARIETY is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 6, 3);
      Bytes.Append_Vector (Result, p_fsh.Data);
      Bytes.Unchecked_Free (p_fsh.Data);
      return (Data => Result);
   end c_complex_of_float;

   function c_make_group
     (p_us : UNIT_LIST)
     return GROUP is
      Result : Bytes.Bit_Vector;
   begin
      TDF_Buildins.Append_TDFINT (Result, p_us.Count);
      Bytes.Append_Vector (Result, p_us.Data);
      Bytes.Unchecked_Free (p_us.Data);
      return (Data => Result);
   end c_make_group;

   function c_label_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return LABEL is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 1);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_label_apply_token;

   function c_make_label
     (p_labelno : TDF_Buildins.TDFINT)
     return LABEL is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 1);
      Bytes.Append_Vector (Result, p_labelno.Data);
      Bytes.Unchecked_Free (p_labelno.Data);
      return (Data => Result);
   end c_make_label;

   function c_make_link
     (p_unit_name : TDF_Buildins.TDFINT;
      p_capsule_name : TDF_Buildins.TDFINT)
     return LINK is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append_Vector (Result, p_unit_name.Data);
      Bytes.Unchecked_Free (p_unit_name.Data);
      Bytes.Append_Vector (Result, p_capsule_name.Data);
      Bytes.Unchecked_Free (p_capsule_name.Data);
      return (Data => Result);
   end c_make_link;

   function c_make_linkextern
     (p_internal : TDF_Buildins.TDFINT;
      p_ext : EXTERNAL)
     return LINKEXTERN is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append_Vector (Result, p_internal.Data);
      Bytes.Unchecked_Free (p_internal.Data);
      Bytes.Append_Vector (Result, p_ext.Data);
      Bytes.Unchecked_Free (p_ext.Data);
      return (Data => Result);
   end c_make_linkextern;

   function c_static_name_def
     (p_assexp : EXP;
      p_id : TDF_Buildins.TDFSTRING)
     return LINKINFO is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 2);
      Bytes.Append_Vector (Result, p_assexp.Data);
      Bytes.Unchecked_Free (p_assexp.Data);
      Bytes.Append_Vector (Result, p_id.Data);
      Bytes.Unchecked_Free (p_id.Data);
      return (Data => Result);
   end c_static_name_def;

   function c_make_comment
     (p_n : TDF_Buildins.TDFSTRING)
     return LINKINFO is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 2);
      Bytes.Append_Vector (Result, p_n.Data);
      Bytes.Unchecked_Free (p_n.Data);
      return (Data => Result);
   end c_make_comment;

   function c_make_weak_defn
     (p_namer : EXP;
      p_val : EXP)
     return LINKINFO is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 2);
      Bytes.Append_Vector (Result, p_namer.Data);
      Bytes.Unchecked_Free (p_namer.Data);
      Bytes.Append_Vector (Result, p_val.Data);
      Bytes.Unchecked_Free (p_val.Data);
      return (Data => Result);
   end c_make_weak_defn;

   function c_make_weak_symbol
     (p_id : TDF_Buildins.TDFSTRING;
      p_val : EXP)
     return LINKINFO is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 4, 2);
      Bytes.Append_Vector (Result, p_id.Data);
      Bytes.Unchecked_Free (p_id.Data);
      Bytes.Append_Vector (Result, p_val.Data);
      Bytes.Unchecked_Free (p_val.Data);
      return (Data => Result);
   end c_make_weak_symbol;

   function c_make_linkinfos
     (p_no_labels : TDF_Buildins.TDFINT;
      p_tds : LINKINFO_LIST)
     return LINKINFO_PROPS is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append_Vector (Result, p_no_labels.Data);
      Bytes.Unchecked_Free (p_no_labels.Data);
      TDF_Buildins.Append_TDFINT (Result, p_tds.Count);
      Bytes.Append_Vector (Result, p_tds.Data);
      Bytes.Unchecked_Free (p_tds.Data);
      return (Data => Result);
   end c_make_linkinfos;

   function c_make_links
     (p_ls : LINK_LIST)
     return LINKS is
      Result : Bytes.Bit_Vector;
   begin
      TDF_Buildins.Append_TDFINT (Result, p_ls.Count);
      Bytes.Append_Vector (Result, p_ls.Data);
      Bytes.Unchecked_Free (p_ls.Data);
      return (Data => Result);
   end c_make_links;

   function c_nat_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return NAT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 3);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_nat_apply_token;

   function c_nat_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return NAT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 3);
      Bytes.Append_Vector (Result, p_control.Data);
      Bytes.Unchecked_Free (p_control.Data);
      Bytes.Append_Vector (Result, p_e1.Data);
      Bytes.Unchecked_Free (p_e1.Data);
      Bytes.Append_Vector (Result, p_e2.Data);
      Bytes.Unchecked_Free (p_e2.Data);
      return (Data => Result);
   end c_nat_cond;

   function c_computed_nat
     (p_arg : EXP)
     return NAT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 3);
      Bytes.Append_Vector (Result, p_arg.Data);
      Bytes.Unchecked_Free (p_arg.Data);
      return (Data => Result);
   end c_computed_nat;

   function c_error_val
     (p_err : ERROR_CODE)
     return NAT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 4, 3);
      Bytes.Append_Vector (Result, p_err.Data);
      Bytes.Unchecked_Free (p_err.Data);
      return (Data => Result);
   end c_error_val;

   function c_make_nat
     (p_n : TDF_Buildins.TDFINT)
     return NAT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 5, 3);
      Bytes.Append_Vector (Result, p_n.Data);
      Bytes.Unchecked_Free (p_n.Data);
      return (Data => Result);
   end c_make_nat;

   function c_ntest_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return NTEST is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 4);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_ntest_apply_token;

   function c_ntest_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return NTEST is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 4);
      Bytes.Append_Vector (Result, p_control.Data);
      Bytes.Unchecked_Free (p_control.Data);
      Bytes.Append_Vector (Result, p_e1.Data);
      Bytes.Unchecked_Free (p_e1.Data);
      Bytes.Append_Vector (Result, p_e2.Data);
      Bytes.Unchecked_Free (p_e2.Data);
      return (Data => Result);
   end c_ntest_cond;


   function c_equal return NTEST is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 4);
      return (Data => Result);
   end c_equal;


   function c_greater_than return NTEST is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 4, 4);
      return (Data => Result);
   end c_greater_than;


   function c_greater_than_or_equal return NTEST is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 5, 4);
      return (Data => Result);
   end c_greater_than_or_equal;


   function c_less_than return NTEST is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 6, 4);
      return (Data => Result);
   end c_less_than;


   function c_less_than_or_equal return NTEST is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 7, 4);
      return (Data => Result);
   end c_less_than_or_equal;


   function c_not_equal return NTEST is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 8, 4);
      return (Data => Result);
   end c_not_equal;


   function c_not_greater_than return NTEST is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 9, 4);
      return (Data => Result);
   end c_not_greater_than;


   function c_not_greater_than_or_equal return NTEST is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 10, 4);
      return (Data => Result);
   end c_not_greater_than_or_equal;


   function c_not_less_than return NTEST is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 11, 4);
      return (Data => Result);
   end c_not_less_than;


   function c_not_less_than_or_equal return NTEST is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 12, 4);
      return (Data => Result);
   end c_not_less_than_or_equal;


   function c_less_than_or_greater_than return NTEST is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 13, 4);
      return (Data => Result);
   end c_less_than_or_greater_than;


   function c_not_less_than_and_not_greater_than return NTEST is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 14, 4);
      return (Data => Result);
   end c_not_less_than_and_not_greater_than;


   function c_comparable return NTEST is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 15, 4);
      return (Data => Result);
   end c_comparable;


   function c_not_comparable return NTEST is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 16, 4);
      return (Data => Result);
   end c_not_comparable;

   function c_make_otagexp
     (p_tgopt : TAG_OPTION;
      p_e : EXP)
     return OTAGEXP is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append_Vector (Result, p_tgopt.Data);
      Bytes.Unchecked_Free (p_tgopt.Data);
      Bytes.Append_Vector (Result, p_e.Data);
      Bytes.Unchecked_Free (p_e.Data);
      return (Data => Result);
   end c_make_otagexp;

   function c_procprops_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return PROCPROPS is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 4);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_procprops_apply_token;

   function c_procprops_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return PROCPROPS is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 4);
      Bytes.Append_Vector (Result, p_control.Data);
      Bytes.Unchecked_Free (p_control.Data);
      Bytes.Append_Vector (Result, p_e1.Data);
      Bytes.Unchecked_Free (p_e1.Data);
      Bytes.Append_Vector (Result, p_e2.Data);
      Bytes.Unchecked_Free (p_e2.Data);
      return (Data => Result);
   end c_procprops_cond;

   function c_add_procprops
     (p_arg1 : PROCPROPS;
      p_arg2 : PROCPROPS)
     return PROCPROPS is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 4);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_add_procprops;


   function c_check_stack return PROCPROPS is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 4, 4);
      return (Data => Result);
   end c_check_stack;


   function c_inline return PROCPROPS is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 5, 4);
      return (Data => Result);
   end c_inline;


   function c_no_long_jump_dest return PROCPROPS is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 6, 4);
      return (Data => Result);
   end c_no_long_jump_dest;


   function c_untidy return PROCPROPS is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 7, 4);
      return (Data => Result);
   end c_untidy;


   function c_var_callees return PROCPROPS is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 8, 4);
      return (Data => Result);
   end c_var_callees;


   function c_var_callers return PROCPROPS is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 9, 4);
      return (Data => Result);
   end c_var_callers;

   function c_rounding_mode_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return ROUNDING_MODE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 3);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_rounding_mode_apply_token;

   function c_rounding_mode_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return ROUNDING_MODE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 3);
      Bytes.Append_Vector (Result, p_control.Data);
      Bytes.Unchecked_Free (p_control.Data);
      Bytes.Append_Vector (Result, p_e1.Data);
      Bytes.Unchecked_Free (p_e1.Data);
      Bytes.Append_Vector (Result, p_e2.Data);
      Bytes.Unchecked_Free (p_e2.Data);
      return (Data => Result);
   end c_rounding_mode_cond;


   function c_round_as_state return ROUNDING_MODE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 3);
      return (Data => Result);
   end c_round_as_state;


   function c_to_nearest return ROUNDING_MODE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 4, 3);
      return (Data => Result);
   end c_to_nearest;


   function c_toward_larger return ROUNDING_MODE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 5, 3);
      return (Data => Result);
   end c_toward_larger;


   function c_toward_smaller return ROUNDING_MODE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 6, 3);
      return (Data => Result);
   end c_toward_smaller;


   function c_toward_zero return ROUNDING_MODE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 7, 3);
      return (Data => Result);
   end c_toward_zero;

   function c_shape_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return SHAPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 4);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_shape_apply_token;

   function c_shape_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return SHAPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 4);
      Bytes.Append_Vector (Result, p_control.Data);
      Bytes.Unchecked_Free (p_control.Data);
      Bytes.Append_Vector (Result, p_e1.Data);
      Bytes.Unchecked_Free (p_e1.Data);
      Bytes.Append_Vector (Result, p_e2.Data);
      Bytes.Unchecked_Free (p_e2.Data);
      return (Data => Result);
   end c_shape_cond;

   function c_bitfield
     (p_bf_var : BITFIELD_VARIETY)
     return SHAPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 4);
      Bytes.Append_Vector (Result, p_bf_var.Data);
      Bytes.Unchecked_Free (p_bf_var.Data);
      return (Data => Result);
   end c_bitfield;


   function c_bottom return SHAPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 4, 4);
      return (Data => Result);
   end c_bottom;

   function c_compound
     (p_sz : EXP)
     return SHAPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 5, 4);
      Bytes.Append_Vector (Result, p_sz.Data);
      Bytes.Unchecked_Free (p_sz.Data);
      return (Data => Result);
   end c_compound;

   function c_floating
     (p_fv : FLOATING_VARIETY)
     return SHAPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 6, 4);
      Bytes.Append_Vector (Result, p_fv.Data);
      Bytes.Unchecked_Free (p_fv.Data);
      return (Data => Result);
   end c_floating;

   function c_integer
     (p_var : VARIETY)
     return SHAPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 7, 4);
      Bytes.Append_Vector (Result, p_var.Data);
      Bytes.Unchecked_Free (p_var.Data);
      return (Data => Result);
   end c_integer;

   function c_nof
     (p_n : NAT;
      p_s : SHAPE)
     return SHAPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 8, 4);
      Bytes.Append_Vector (Result, p_n.Data);
      Bytes.Unchecked_Free (p_n.Data);
      Bytes.Append_Vector (Result, p_s.Data);
      Bytes.Unchecked_Free (p_s.Data);
      return (Data => Result);
   end c_nof;

   function c_offset
     (p_arg1 : ALIGNMENT;
      p_arg2 : ALIGNMENT)
     return SHAPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 9, 4);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_offset;

   function c_pointer
     (p_arg : ALIGNMENT)
     return SHAPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 10, 4);
      Bytes.Append_Vector (Result, p_arg.Data);
      Bytes.Unchecked_Free (p_arg.Data);
      return (Data => Result);
   end c_pointer;


   function c_proc return SHAPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 11, 4);
      return (Data => Result);
   end c_proc;


   function c_top return SHAPE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 12, 4);
      return (Data => Result);
   end c_top;

   function c_signed_nat_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return SIGNED_NAT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 3);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_signed_nat_apply_token;

   function c_signed_nat_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return SIGNED_NAT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 3);
      Bytes.Append_Vector (Result, p_control.Data);
      Bytes.Unchecked_Free (p_control.Data);
      Bytes.Append_Vector (Result, p_e1.Data);
      Bytes.Unchecked_Free (p_e1.Data);
      Bytes.Append_Vector (Result, p_e2.Data);
      Bytes.Unchecked_Free (p_e2.Data);
      return (Data => Result);
   end c_signed_nat_cond;

   function c_computed_signed_nat
     (p_arg : EXP)
     return SIGNED_NAT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 3);
      Bytes.Append_Vector (Result, p_arg.Data);
      Bytes.Unchecked_Free (p_arg.Data);
      return (Data => Result);
   end c_computed_signed_nat;

   function c_make_signed_nat
     (p_neg : TDF_Buildins.TDFBOOL;
      p_n : TDF_Buildins.TDFINT)
     return SIGNED_NAT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 4, 3);
      Bytes.Append_Vector (Result, p_neg.Data);
      Bytes.Unchecked_Free (p_neg.Data);
      Bytes.Append_Vector (Result, p_n.Data);
      Bytes.Unchecked_Free (p_n.Data);
      return (Data => Result);
   end c_make_signed_nat;

   function c_snat_from_nat
     (p_neg : BOOL;
      p_n : NAT)
     return SIGNED_NAT is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 5, 3);
      Bytes.Append_Vector (Result, p_neg.Data);
      Bytes.Unchecked_Free (p_neg.Data);
      Bytes.Append_Vector (Result, p_n.Data);
      Bytes.Unchecked_Free (p_n.Data);
      return (Data => Result);
   end c_snat_from_nat;


   function c_access return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 5);
      return (Data => Result);
   end c_access;


   function c_al_tag return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 5);
      return (Data => Result);
   end c_al_tag;


   function c_alignment_sort return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 5);
      return (Data => Result);
   end c_alignment_sort;


   function c_bitfield_variety return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 4, 5);
      return (Data => Result);
   end c_bitfield_variety;


   function c_bool return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 5, 5);
      return (Data => Result);
   end c_bool;


   function c_error_treatment return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 6, 5);
      return (Data => Result);
   end c_error_treatment;


   function c_exp return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 7, 5);
      return (Data => Result);
   end c_exp;


   function c_floating_variety return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 8, 5);
      return (Data => Result);
   end c_floating_variety;

   function c_foreign_sort
     (p_foreign_name : STRING)
     return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 9, 5);
      Bytes.Append_Vector (Result, p_foreign_name.Data);
      Bytes.Unchecked_Free (p_foreign_name.Data);
      return (Data => Result);
   end c_foreign_sort;


   function c_label return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 10, 5);
      return (Data => Result);
   end c_label;


   function c_nat return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 11, 5);
      return (Data => Result);
   end c_nat;


   function c_ntest return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 12, 5);
      return (Data => Result);
   end c_ntest;


   function c_procprops return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 13, 5);
      return (Data => Result);
   end c_procprops;


   function c_rounding_mode return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 14, 5);
      return (Data => Result);
   end c_rounding_mode;


   function c_shape return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 15, 5);
      return (Data => Result);
   end c_shape;


   function c_signed_nat return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 16, 5);
      return (Data => Result);
   end c_signed_nat;


   function c_string return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 17, 5);
      return (Data => Result);
   end c_string;


   function c_tag return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 18, 5);
      return (Data => Result);
   end c_tag;


   function c_transfer_mode return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 19, 5);
      return (Data => Result);
   end c_transfer_mode;

   function c_token
     (p_result : SORTNAME;
      p_params : SORTNAME_LIST)
     return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 20, 5);
      Bytes.Append_Vector (Result, p_result.Data);
      Bytes.Unchecked_Free (p_result.Data);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_params.Count);
      Bytes.Append_Vector (Result, p_params.Data);
      Bytes.Unchecked_Free (p_params.Data);
      return (Data => Result);
   end c_token;


   function c_variety return SORTNAME is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 21, 5);
      return (Data => Result);
   end c_variety;

   function c_make_sourcemark
     (p_file : FILENAME;
      p_line_no : NAT;
      p_char_offset : NAT)
     return SOURCEMARK is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 1);
      Bytes.Append_Vector (Result, p_file.Data);
      Bytes.Unchecked_Free (p_file.Data);
      Bytes.Append_Vector (Result, p_line_no.Data);
      Bytes.Unchecked_Free (p_line_no.Data);
      Bytes.Append_Vector (Result, p_char_offset.Data);
      Bytes.Unchecked_Free (p_char_offset.Data);
      return (Data => Result);
   end c_make_sourcemark;

   function c_string_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return STRING is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 3);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_string_apply_token;

   function c_string_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return STRING is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 3);
      Bytes.Append_Vector (Result, p_control.Data);
      Bytes.Unchecked_Free (p_control.Data);
      Bytes.Append_Vector (Result, p_e1.Data);
      Bytes.Unchecked_Free (p_e1.Data);
      Bytes.Append_Vector (Result, p_e2.Data);
      Bytes.Unchecked_Free (p_e2.Data);
      return (Data => Result);
   end c_string_cond;

   function c_concat_string
     (p_arg1 : STRING;
      p_arg2 : STRING)
     return STRING is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 3);
      Bytes.Append_Vector (Result, p_arg1.Data);
      Bytes.Unchecked_Free (p_arg1.Data);
      Bytes.Append_Vector (Result, p_arg2.Data);
      Bytes.Unchecked_Free (p_arg2.Data);
      return (Data => Result);
   end c_concat_string;

   function c_make_string
     (p_arg : TDF_Buildins.TDFSTRING)
     return STRING is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 4, 3);
      Bytes.Append_Vector (Result, p_arg.Data);
      Bytes.Unchecked_Free (p_arg.Data);
      return (Data => Result);
   end c_make_string;

   function c_tag_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return TAG is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 1);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_tag_apply_token;

   function c_make_tag
     (p_tagno : TDF_Buildins.TDFINT)
     return TAG is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 1);
      Bytes.Append_Vector (Result, p_tagno.Data);
      Bytes.Unchecked_Free (p_tagno.Data);
      return (Data => Result);
   end c_make_tag;

   function c_make_tagacc
     (p_tg : TAG;
      p_acc : ACCESS_OPTION)
     return TAGACC is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append_Vector (Result, p_tg.Data);
      Bytes.Unchecked_Free (p_tg.Data);
      Bytes.Append_Vector (Result, p_acc.Data);
      Bytes.Unchecked_Free (p_acc.Data);
      return (Data => Result);
   end c_make_tagacc;

   function c_make_id_tagdec
     (p_t_intro : TDF_Buildins.TDFINT;
      p_acc : ACCESS_OPTION;
      p_signature : STRING_OPTION;
      p_x : SHAPE)
     return TAGDEC is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 2);
      Bytes.Append_Vector (Result, p_t_intro.Data);
      Bytes.Unchecked_Free (p_t_intro.Data);
      Bytes.Append_Vector (Result, p_acc.Data);
      Bytes.Unchecked_Free (p_acc.Data);
      Bytes.Append_Vector (Result, p_signature.Data);
      Bytes.Unchecked_Free (p_signature.Data);
      Bytes.Append_Vector (Result, p_x.Data);
      Bytes.Unchecked_Free (p_x.Data);
      return (Data => Result);
   end c_make_id_tagdec;

   function c_make_var_tagdec
     (p_t_intro : TDF_Buildins.TDFINT;
      p_acc : ACCESS_OPTION;
      p_signature : STRING_OPTION;
      p_x : SHAPE)
     return TAGDEC is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 2);
      Bytes.Append_Vector (Result, p_t_intro.Data);
      Bytes.Unchecked_Free (p_t_intro.Data);
      Bytes.Append_Vector (Result, p_acc.Data);
      Bytes.Unchecked_Free (p_acc.Data);
      Bytes.Append_Vector (Result, p_signature.Data);
      Bytes.Unchecked_Free (p_signature.Data);
      Bytes.Append_Vector (Result, p_x.Data);
      Bytes.Unchecked_Free (p_x.Data);
      return (Data => Result);
   end c_make_var_tagdec;

   function c_common_tagdec
     (p_t_intro : TDF_Buildins.TDFINT;
      p_acc : ACCESS_OPTION;
      p_signature : STRING_OPTION;
      p_x : SHAPE)
     return TAGDEC is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 2);
      Bytes.Append_Vector (Result, p_t_intro.Data);
      Bytes.Unchecked_Free (p_t_intro.Data);
      Bytes.Append_Vector (Result, p_acc.Data);
      Bytes.Unchecked_Free (p_acc.Data);
      Bytes.Append_Vector (Result, p_signature.Data);
      Bytes.Unchecked_Free (p_signature.Data);
      Bytes.Append_Vector (Result, p_x.Data);
      Bytes.Unchecked_Free (p_x.Data);
      return (Data => Result);
   end c_common_tagdec;

   function c_make_tagdecs
     (p_no_labels : TDF_Buildins.TDFINT;
      p_tds : TAGDEC_LIST)
     return TAGDEC_PROPS is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append_Vector (Result, p_no_labels.Data);
      Bytes.Unchecked_Free (p_no_labels.Data);
      TDF_Buildins.Append_TDFINT (Result, p_tds.Count);
      Bytes.Append_Vector (Result, p_tds.Data);
      Bytes.Unchecked_Free (p_tds.Data);
      return (Data => Result);
   end c_make_tagdecs;

   function c_make_id_tagdef
     (p_t : TDF_Buildins.TDFINT;
      p_signature : STRING_OPTION;
      p_e : EXP)
     return TAGDEF is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 2);
      Bytes.Append_Vector (Result, p_t.Data);
      Bytes.Unchecked_Free (p_t.Data);
      Bytes.Append_Vector (Result, p_signature.Data);
      Bytes.Unchecked_Free (p_signature.Data);
      Bytes.Append_Vector (Result, p_e.Data);
      Bytes.Unchecked_Free (p_e.Data);
      return (Data => Result);
   end c_make_id_tagdef;

   function c_make_var_tagdef
     (p_t : TDF_Buildins.TDFINT;
      p_opt_access : ACCESS_OPTION;
      p_signature : STRING_OPTION;
      p_e : EXP)
     return TAGDEF is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 2);
      Bytes.Append_Vector (Result, p_t.Data);
      Bytes.Unchecked_Free (p_t.Data);
      Bytes.Append_Vector (Result, p_opt_access.Data);
      Bytes.Unchecked_Free (p_opt_access.Data);
      Bytes.Append_Vector (Result, p_signature.Data);
      Bytes.Unchecked_Free (p_signature.Data);
      Bytes.Append_Vector (Result, p_e.Data);
      Bytes.Unchecked_Free (p_e.Data);
      return (Data => Result);
   end c_make_var_tagdef;

   function c_common_tagdef
     (p_t : TDF_Buildins.TDFINT;
      p_opt_access : ACCESS_OPTION;
      p_signature : STRING_OPTION;
      p_e : EXP)
     return TAGDEF is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 2);
      Bytes.Append_Vector (Result, p_t.Data);
      Bytes.Unchecked_Free (p_t.Data);
      Bytes.Append_Vector (Result, p_opt_access.Data);
      Bytes.Unchecked_Free (p_opt_access.Data);
      Bytes.Append_Vector (Result, p_signature.Data);
      Bytes.Unchecked_Free (p_signature.Data);
      Bytes.Append_Vector (Result, p_e.Data);
      Bytes.Unchecked_Free (p_e.Data);
      return (Data => Result);
   end c_common_tagdef;

   function c_make_tagdefs
     (p_no_labels : TDF_Buildins.TDFINT;
      p_tds : TAGDEF_LIST)
     return TAGDEF_PROPS is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append_Vector (Result, p_no_labels.Data);
      Bytes.Unchecked_Free (p_no_labels.Data);
      TDF_Buildins.Append_TDFINT (Result, p_tds.Count);
      Bytes.Append_Vector (Result, p_tds.Data);
      Bytes.Unchecked_Free (p_tds.Data);
      return (Data => Result);
   end c_make_tagdefs;

   function c_make_tagshacc
     (p_sha : SHAPE;
      p_opt_access : ACCESS_OPTION;
      p_tg_intro : TAG)
     return TAGSHACC is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append_Vector (Result, p_sha.Data);
      Bytes.Unchecked_Free (p_sha.Data);
      Bytes.Append_Vector (Result, p_opt_access.Data);
      Bytes.Unchecked_Free (p_opt_access.Data);
      Bytes.Append_Vector (Result, p_tg_intro.Data);
      Bytes.Unchecked_Free (p_tg_intro.Data);
      return (Data => Result);
   end c_make_tagshacc;

   function c_make_tokdec
     (p_tok : TDF_Buildins.TDFINT;
      p_signature : STRING_OPTION;
      p_s : SORTNAME)
     return TOKDEC is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 1);
      Bytes.Append_Vector (Result, p_tok.Data);
      Bytes.Unchecked_Free (p_tok.Data);
      Bytes.Append_Vector (Result, p_signature.Data);
      Bytes.Unchecked_Free (p_signature.Data);
      Bytes.Append_Vector (Result, p_s.Data);
      Bytes.Unchecked_Free (p_s.Data);
      return (Data => Result);
   end c_make_tokdec;

   function c_make_tokdecs
     (p_tds : TOKDEC_LIST)
     return TOKDEC_PROPS is
      Result : Bytes.Bit_Vector;
   begin
      TDF_Buildins.Append_TDFINT (Result, p_tds.Count);
      Bytes.Append_Vector (Result, p_tds.Data);
      Bytes.Unchecked_Free (p_tds.Data);
      return (Data => Result);
   end c_make_tokdecs;

   function c_make_tokdef
     (p_tok : TDF_Buildins.TDFINT;
      p_signature : STRING_OPTION;
      p_def : TDF_Buildins.BITSTREAM)
     return TOKDEF is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 1);
      Bytes.Append_Vector (Result, p_tok.Data);
      Bytes.Unchecked_Free (p_tok.Data);
      Bytes.Append_Vector (Result, p_signature.Data);
      Bytes.Unchecked_Free (p_signature.Data);
      Bytes.Append_Vector (Result, p_def.Data);
      Bytes.Unchecked_Free (p_def.Data);
      return (Data => Result);
   end c_make_tokdef;

   function c_make_tokdefs
     (p_no_labels : TDF_Buildins.TDFINT;
      p_tds : TOKDEF_LIST)
     return TOKDEF_PROPS is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append_Vector (Result, p_no_labels.Data);
      Bytes.Unchecked_Free (p_no_labels.Data);
      TDF_Buildins.Append_TDFINT (Result, p_tds.Count);
      Bytes.Append_Vector (Result, p_tds.Data);
      Bytes.Unchecked_Free (p_tds.Data);
      return (Data => Result);
   end c_make_tokdefs;

   function c_token_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return TOKEN is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 2);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_token_apply_token;

   function c_make_tok
     (p_tokno : TDF_Buildins.TDFINT)
     return TOKEN is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 2);
      Bytes.Append_Vector (Result, p_tokno.Data);
      Bytes.Unchecked_Free (p_tokno.Data);
      return (Data => Result);
   end c_make_tok;

   function c_use_tokdef
     (p_tdef : TDF_Buildins.BITSTREAM)
     return TOKEN is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 2);
      Bytes.Append_Vector (Result, p_tdef.Data);
      Bytes.Unchecked_Free (p_tdef.Data);
      return (Data => Result);
   end c_use_tokdef;

   function c_token_definition
     (p_result_sort : SORTNAME;
      p_tok_params : TOKFORMALS_LIST)
     return TOKEN_DEFN is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 1);
      Bytes.Append_Vector (Result, p_result_sort.Data);
      Bytes.Unchecked_Free (p_result_sort.Data);
      Bytes.Append (Result, 0, 1);
      TDF_Buildins.Append_TDFINT (Result, p_tok_params.Count);
      Bytes.Append_Vector (Result, p_tok_params.Data);
      Bytes.Unchecked_Free (p_tok_params.Data);
      return (Data => Result);
   end c_token_definition;

   function c_make_tokformals
     (p_sn : SORTNAME;
      p_tk : TDF_Buildins.TDFINT)
     return TOKFORMALS is
      Result : Bytes.Bit_Vector;
   begin
      Bytes.Append_Vector (Result, p_sn.Data);
      Bytes.Unchecked_Free (p_sn.Data);
      Bytes.Append_Vector (Result, p_tk.Data);
      Bytes.Unchecked_Free (p_tk.Data);
      return (Data => Result);
   end c_make_tokformals;

   function c_transfer_mode_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return TRANSFER_MODE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 3);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_transfer_mode_apply_token;

   function c_transfer_mode_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return TRANSFER_MODE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 3);
      Bytes.Append_Vector (Result, p_control.Data);
      Bytes.Unchecked_Free (p_control.Data);
      Bytes.Append_Vector (Result, p_e1.Data);
      Bytes.Unchecked_Free (p_e1.Data);
      Bytes.Append_Vector (Result, p_e2.Data);
      Bytes.Unchecked_Free (p_e2.Data);
      return (Data => Result);
   end c_transfer_mode_cond;

   function c_add_modes
     (p_md1 : TRANSFER_MODE;
      p_md2 : TRANSFER_MODE)
     return TRANSFER_MODE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 3);
      Bytes.Append_Vector (Result, p_md1.Data);
      Bytes.Unchecked_Free (p_md1.Data);
      Bytes.Append_Vector (Result, p_md2.Data);
      Bytes.Unchecked_Free (p_md2.Data);
      return (Data => Result);
   end c_add_modes;


   function c_overlap return TRANSFER_MODE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 4, 3);
      return (Data => Result);
   end c_overlap;


   function c_standard_transfer_mode return TRANSFER_MODE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 5, 3);
      return (Data => Result);
   end c_standard_transfer_mode;


   function c_trap_on_nil return TRANSFER_MODE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 6, 3);
      return (Data => Result);
   end c_trap_on_nil;


   function c_volatile return TRANSFER_MODE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 7, 3);
      return (Data => Result);
   end c_volatile;


   function c_complete return TRANSFER_MODE is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 8, 3);
      return (Data => Result);
   end c_complete;

   function c_make_unique
     (p_text : TDFIDENT_LIST)
     return UNIQUE is
      Result : Bytes.Bit_Vector;
   begin
      TDF_Buildins.Append_TDFINT (Result, p_text.Count);
      Bytes.Append_Vector (Result, p_text.Data);
      Bytes.Unchecked_Free (p_text.Data);
      return (Data => Result);
   end c_make_unique;

   function c_make_unit
     (p_local_vars : TDFINT_LIST;
      p_lks : LINKS_LIST;
      p_properties : TDF_Buildins.BYTESTREAM)
     return UNIT is
      Result : Bytes.Bit_Vector;
   begin
      TDF_Buildins.Append_TDFINT (Result, p_local_vars.Count);
      Bytes.Append_Vector (Result, p_local_vars.Data);
      Bytes.Unchecked_Free (p_local_vars.Data);
      TDF_Buildins.Append_TDFINT (Result, p_lks.Count);
      Bytes.Append_Vector (Result, p_lks.Data);
      Bytes.Unchecked_Free (p_lks.Data);
      Bytes.Append_Vector (Result, p_properties.Data);
      Bytes.Unchecked_Free (p_properties.Data);
      return (Data => Result);
   end c_make_unit;

   function c_var_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return VARIETY is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 2);
      Bytes.Append_Vector (Result, p_token_value.Data);
      Bytes.Unchecked_Free (p_token_value.Data);
      Bytes.Append_Vector (Result, p_token_args.Data);
      Bytes.Unchecked_Free (p_token_args.Data);
      return (Data => Result);
   end c_var_apply_token;

   function c_var_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return VARIETY is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 2);
      Bytes.Append_Vector (Result, p_control.Data);
      Bytes.Unchecked_Free (p_control.Data);
      Bytes.Append_Vector (Result, p_e1.Data);
      Bytes.Unchecked_Free (p_e1.Data);
      Bytes.Append_Vector (Result, p_e2.Data);
      Bytes.Unchecked_Free (p_e2.Data);
      return (Data => Result);
   end c_var_cond;

   function c_var_limits
     (p_lower_bound : SIGNED_NAT;
      p_upper_bound : SIGNED_NAT)
     return VARIETY is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 3, 2);
      Bytes.Append_Vector (Result, p_lower_bound.Data);
      Bytes.Unchecked_Free (p_lower_bound.Data);
      Bytes.Append_Vector (Result, p_upper_bound.Data);
      Bytes.Unchecked_Free (p_upper_bound.Data);
      return (Data => Result);
   end c_var_limits;

   function c_var_width
     (p_signed_width : BOOL;
      p_width : NAT)
     return VARIETY is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 4, 2);
      Bytes.Append_Vector (Result, p_signed_width.Data);
      Bytes.Unchecked_Free (p_signed_width.Data);
      Bytes.Append_Vector (Result, p_width.Data);
      Bytes.Unchecked_Free (p_width.Data);
      return (Data => Result);
   end c_var_width;

   function c_make_version
     (p_major_version : TDF_Buildins.TDFINT;
      p_minor_version : TDF_Buildins.TDFINT)
     return VERSION is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 1, 1);
      Bytes.Append_Vector (Result, p_major_version.Data);
      Bytes.Unchecked_Free (p_major_version.Data);
      Bytes.Append_Vector (Result, p_minor_version.Data);
      Bytes.Unchecked_Free (p_minor_version.Data);
      return (Data => Result);
   end c_make_version;

   function c_user_info
     (p_information : STRING)
     return VERSION is
      Result : Bytes.Bit_Vector;
   begin
      Append_Extended (Result, 2, 1);
      Bytes.Append_Vector (Result, p_information.Data);
      Bytes.Unchecked_Free (p_information.Data);
      return (Data => Result);
   end c_user_info;

   function c_make_versions
     (p_version_info : VERSION_LIST)
     return VERSION_PROPS is
      Result : Bytes.Bit_Vector;
   begin
      TDF_Buildins.Append_TDFINT (Result, p_version_info.Count);
      Bytes.Append_Vector (Result, p_version_info.Data);
      Bytes.Unchecked_Free (p_version_info.Data);
      return (Data => Result);
   end c_make_versions;


end TDF;
