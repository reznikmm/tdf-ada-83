--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

--
--  AUTOMATICALLY GENERATED FROM TDF 4.0
--  BY make_tdf (VERSION 2.0), DO NOT EDIT
--

with Bytes;
with TDF_Buildins;

package TDF is

   Version_Major : constant := 4;
   Version_Minor : constant := 0;

   subtype TDFIDENT is TDF_Buildins.TDFIDENT;
   subtype TDFINT is TDF_Buildins.TDFINT;
   subtype File_Name is String;

   type ACCESS_SORT is private;
   type ACCESS_OPTION is private;
   type AL_TAG is private;
   type AL_TAGDEF is private;
   type AL_TAGDEF_LIST is private;
   type AL_TAGDEF_PROPS is private;
   type ALIGNMENT is private;
   type BITFIELD_VARIETY is private;
   type BOOL is private;
   type CALLEES is private;
   type CAPSULE is private;
   type CAPSULE_LINK is private;
   type CAPSULE_LINK_LIST is private;
   type CASELIM is private;
   type CASELIM_LIST is private;
   type DIAG_DESCRIPTOR is private;
   type DIAG_DESCRIPTOR_LIST is private;
   type DIAG_FIELD is private;
   type DIAG_FIELD_LIST is private;
   type DIAG_TAG is private;
   type DIAG_TAGDEF is private;
   type DIAG_TAGDEF_LIST is private;
   type DIAG_TQ is private;
   type DIAG_TYPE is private;
   type DIAG_TYPE_LIST is private;
   type DIAG_TYPE_UNIT is private;
   type DIAG_UNIT is private;
   type ENUM_VALUES is private;
   type ENUM_VALUES_LIST is private;
   type ERROR_CODE is private;
   type ERROR_CODE_LIST is private;
   type ERROR_TREATMENT is private;
   type EXP is private;
   type EXP_LIST is private;
   type EXP_OPTION is private;
   type EXTERN_LINK is private;
   type EXTERN_LINK_LIST is private;
   type EXTERNAL is private;
   type FILENAME is private;
   type FLOATING_VARIETY is private;
   type GROUP is private;
   type GROUP_LIST is private;
   type LABEL is private;
   type LABEL_LIST is private;
   type LINK is private;
   type LINK_LIST is private;
   type LINKEXTERN is private;
   type LINKEXTERN_LIST is private;
   type LINKINFO is private;
   type LINKINFO_LIST is private;
   type LINKINFO_PROPS is private;
   type LINKS is private;
   type LINKS_LIST is private;
   type NAT is private;
   type NAT_OPTION is private;
   type NTEST is private;
   type OTAGEXP is private;
   type OTAGEXP_LIST is private;
   type PROCPROPS is private;
   type PROCPROPS_OPTION is private;
   type ROUNDING_MODE is private;
   type SHAPE is private;
   type SIGNED_NAT is private;
   type SORTNAME is private;
   type SORTNAME_LIST is private;
   type SOURCEMARK is private;
   type STRING is private;
   type STRING_OPTION is private;
   type TAG is private;
   type TAG_OPTION is private;
   type TAGACC is private;
   type TAGACC_OPTION is private;
   type TAGDEC is private;
   type TAGDEC_LIST is private;
   type TAGDEC_PROPS is private;
   type TAGDEF is private;
   type TAGDEF_LIST is private;
   type TAGDEF_PROPS is private;
   type TAGSHACC is private;
   type TAGSHACC_LIST is private;
   type TDFIDENT_LIST is private;
   type TDFINT_LIST is private;
   type TOKDEC is private;
   type TOKDEC_LIST is private;
   type TOKDEC_PROPS is private;
   type TOKDEF is private;
   type TOKDEF_LIST is private;
   type TOKDEF_PROPS is private;
   type TOKEN is private;
   type TOKEN_DEFN is private;
   type TOKFORMALS is private;
   type TOKFORMALS_LIST is private;
   type TRANSFER_MODE is private;
   type UNIQUE is private;
   type UNIT is private;
   type UNIT_LIST is private;
   type VARIETY is private;
   type VERSION is private;
   type VERSION_LIST is private;
   type VERSION_PROPS is private;

   function None return ACCESS_OPTION;
   function Option (Item : ACCESS_SORT) return ACCESS_OPTION;

   function List (Item : AL_TAGDEF) return AL_TAGDEF_LIST;

   procedure Append
     (Self : in out AL_TAGDEF_LIST;
      Item : AL_TAGDEF);

   function To_BYTESTREAM (Self : AL_TAGDEF_PROPS) return TDF_Buildins.BYTESTREAM;

   function List (Item : CAPSULE_LINK) return CAPSULE_LINK_LIST;

   procedure Append
     (Self : in out CAPSULE_LINK_LIST;
      Item : CAPSULE_LINK);

   function List (Item : CASELIM) return CASELIM_LIST;

   procedure Append
     (Self : in out CASELIM_LIST;
      Item : CASELIM);

   function List (Item : DIAG_DESCRIPTOR) return DIAG_DESCRIPTOR_LIST;

   procedure Append
     (Self : in out DIAG_DESCRIPTOR_LIST;
      Item : DIAG_DESCRIPTOR);

   function List (Item : DIAG_FIELD) return DIAG_FIELD_LIST;

   procedure Append
     (Self : in out DIAG_FIELD_LIST;
      Item : DIAG_FIELD);

   function List (Item : DIAG_TAGDEF) return DIAG_TAGDEF_LIST;

   procedure Append
     (Self : in out DIAG_TAGDEF_LIST;
      Item : DIAG_TAGDEF);

   function List (Item : DIAG_TYPE) return DIAG_TYPE_LIST;

   procedure Append
     (Self : in out DIAG_TYPE_LIST;
      Item : DIAG_TYPE);

   function To_BYTESTREAM (Self : DIAG_TYPE_UNIT) return TDF_Buildins.BYTESTREAM;

   function To_BYTESTREAM (Self : DIAG_UNIT) return TDF_Buildins.BYTESTREAM;

   function List (Item : ENUM_VALUES) return ENUM_VALUES_LIST;

   procedure Append
     (Self : in out ENUM_VALUES_LIST;
      Item : ENUM_VALUES);

   function List (Item : ERROR_CODE) return ERROR_CODE_LIST;

   procedure Append
     (Self : in out ERROR_CODE_LIST;
      Item : ERROR_CODE);

   function List (Item : EXP) return EXP_LIST;

   procedure Append
     (Self : in out EXP_LIST;
      Item : EXP);

   function None return EXP_OPTION;
   function Option (Item : EXP) return EXP_OPTION;

   function List (Item : EXTERN_LINK) return EXTERN_LINK_LIST;

   procedure Append
     (Self : in out EXTERN_LINK_LIST;
      Item : EXTERN_LINK);

   function List (Item : GROUP) return GROUP_LIST;

   procedure Append
     (Self : in out GROUP_LIST;
      Item : GROUP);

   function List (Item : LABEL) return LABEL_LIST;

   procedure Append
     (Self : in out LABEL_LIST;
      Item : LABEL);

   function List (Item : LINK) return LINK_LIST;

   procedure Append
     (Self : in out LINK_LIST;
      Item : LINK);

   function List (Item : LINKEXTERN) return LINKEXTERN_LIST;

   procedure Append
     (Self : in out LINKEXTERN_LIST;
      Item : LINKEXTERN);

   function List (Item : LINKINFO) return LINKINFO_LIST;

   procedure Append
     (Self : in out LINKINFO_LIST;
      Item : LINKINFO);

   function To_BYTESTREAM (Self : LINKINFO_PROPS) return TDF_Buildins.BYTESTREAM;

   function List (Item : LINKS) return LINKS_LIST;

   procedure Append
     (Self : in out LINKS_LIST;
      Item : LINKS);

   function None return NAT_OPTION;
   function Option (Item : NAT) return NAT_OPTION;

   function List (Item : OTAGEXP) return OTAGEXP_LIST;

   procedure Append
     (Self : in out OTAGEXP_LIST;
      Item : OTAGEXP);

   function None return PROCPROPS_OPTION;
   function Option (Item : PROCPROPS) return PROCPROPS_OPTION;

   function List (Item : SORTNAME) return SORTNAME_LIST;

   procedure Append
     (Self : in out SORTNAME_LIST;
      Item : SORTNAME);

   function None return STRING_OPTION;
   function Option (Item : STRING) return STRING_OPTION;

   function None return TAG_OPTION;
   function Option (Item : TAG) return TAG_OPTION;

   function None return TAGACC_OPTION;
   function Option (Item : TAGACC) return TAGACC_OPTION;

   function List (Item : TAGDEC) return TAGDEC_LIST;

   procedure Append
     (Self : in out TAGDEC_LIST;
      Item : TAGDEC);

   function To_BYTESTREAM (Self : TAGDEC_PROPS) return TDF_Buildins.BYTESTREAM;

   function List (Item : TAGDEF) return TAGDEF_LIST;

   procedure Append
     (Self : in out TAGDEF_LIST;
      Item : TAGDEF);

   function To_BYTESTREAM (Self : TAGDEF_PROPS) return TDF_Buildins.BYTESTREAM;

   function List (Item : TAGSHACC) return TAGSHACC_LIST;

   procedure Append
     (Self : in out TAGSHACC_LIST;
      Item : TAGSHACC);

   function List (Item : TDFIDENT) return TDFIDENT_LIST;

   procedure Append
     (Self : in out TDFIDENT_LIST;
      Item : TDFIDENT);

   function List (Item : TDFINT) return TDFINT_LIST;

   procedure Append
     (Self : in out TDFINT_LIST;
      Item : TDFINT);

   function List (Item : TOKDEC) return TOKDEC_LIST;

   procedure Append
     (Self : in out TOKDEC_LIST;
      Item : TOKDEC);

   function To_BYTESTREAM (Self : TOKDEC_PROPS) return TDF_Buildins.BYTESTREAM;

   function List (Item : TOKDEF) return TOKDEF_LIST;

   procedure Append
     (Self : in out TOKDEF_LIST;
      Item : TOKDEF);

   function To_BYTESTREAM (Self : TOKDEF_PROPS) return TDF_Buildins.BYTESTREAM;

   function List (Item : TOKFORMALS) return TOKFORMALS_LIST;

   procedure Append
     (Self : in out TOKFORMALS_LIST;
      Item : TOKFORMALS);

   function List (Item : UNIT) return UNIT_LIST;

   procedure Append
     (Self : in out UNIT_LIST;
      Item : UNIT);

   function List (Item : VERSION) return VERSION_LIST;

   procedure Append
     (Self : in out VERSION_LIST;
      Item : VERSION);

   function To_BYTESTREAM (Self : VERSION_PROPS) return TDF_Buildins.BYTESTREAM;


   function c_access_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return ACCESS_SORT;

   function c_access_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return ACCESS_SORT;

   function c_add_accesses
     (p_a1 : ACCESS_SORT;
      p_a : ACCESS_SORT)
     return ACCESS_SORT;

   function c_constant return ACCESS_SORT;

   function c_long_jump_access return ACCESS_SORT;

   function c_no_other_read return ACCESS_SORT;

   function c_no_other_write return ACCESS_SORT;

   function c_out_par return ACCESS_SORT;

   function c_preserve return ACCESS_SORT;

   function c_register return ACCESS_SORT;

   function c_standard_access return ACCESS_SORT;

   function c_used_as_volatile return ACCESS_SORT;

   function c_visible return ACCESS_SORT;

   function c_al_tag_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return AL_TAG;

   function c_make_al_tag
     (p_al_tagno : TDF_Buildins.TDFINT)
     return AL_TAG;

   function c_make_al_tagdef
     (p_t : TDF_Buildins.TDFINT;
      p_a : ALIGNMENT)
     return AL_TAGDEF;

   function c_make_al_tagdefs
     (p_no_labels : TDF_Buildins.TDFINT;
      p_tds : AL_TAGDEF_LIST)
     return AL_TAGDEF_PROPS;

   function c_alignment_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return ALIGNMENT;

   function c_alignment_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return ALIGNMENT;

   function c_alignment
     (p_sha : SHAPE)
     return ALIGNMENT;

   function c_alloca_alignment return ALIGNMENT;

   function c_callees_alignment
     (p_var : BOOL)
     return ALIGNMENT;

   function c_callers_alignment
     (p_var : BOOL)
     return ALIGNMENT;

   function c_code_alignment return ALIGNMENT;

   function c_locals_alignment return ALIGNMENT;

   function c_obtain_al_tag
     (p_at : AL_TAG)
     return ALIGNMENT;

   function c_parameter_alignment
     (p_sha : SHAPE)
     return ALIGNMENT;

   function c_unite_alignments
     (p_a1 : ALIGNMENT;
      p_a2 : ALIGNMENT)
     return ALIGNMENT;

   function c_var_param_alignment return ALIGNMENT;

   function c_bfvar_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return BITFIELD_VARIETY;

   function c_bfvar_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return BITFIELD_VARIETY;

   function c_bfvar_bits
     (p_issigned : BOOL;
      p_bits : NAT)
     return BITFIELD_VARIETY;

   function c_bool_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return BOOL;

   function c_bool_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return BOOL;

   function c_false return BOOL;

   function c_true return BOOL;

   function c_make_callee_list
     (p_args : EXP_LIST)
     return CALLEES;

   function c_make_dynamic_callees
     (p_ptr : EXP;
      p_sze : EXP)
     return CALLEES;

   function c_same_callees return CALLEES;

   function c_make_capsule
     (p_prop_names : TDFIDENT_LIST;
      p_capsule_linking : CAPSULE_LINK_LIST;
      p_external_linkage : EXTERN_LINK_LIST;
      p_groups : GROUP_LIST)
     return CAPSULE;

   function c_make_capsule_link
     (p_sn : TDF_Buildins.TDFIDENT;
      p_n : TDF_Buildins.TDFINT)
     return CAPSULE_LINK;

   function c_make_caselim
     (p_branch : LABEL;
      p_lower : SIGNED_NAT;
      p_upper : SIGNED_NAT)
     return CASELIM;

   function c_diag_desc_id
     (p_src_name : TDF_Buildins.TDFSTRING;
      p_whence : SOURCEMARK;
      p_found_at : EXP;
      p_type : DIAG_TYPE)
     return DIAG_DESCRIPTOR;

   function c_diag_desc_struct
     (p_src_name : TDF_Buildins.TDFSTRING;
      p_whence : SOURCEMARK;
      p_new_type : DIAG_TYPE)
     return DIAG_DESCRIPTOR;

   function c_diag_desc_typedef
     (p_src_name : TDF_Buildins.TDFSTRING;
      p_whence : SOURCEMARK;
      p_new_type : DIAG_TYPE)
     return DIAG_DESCRIPTOR;

   function c_make_diag_field
     (p_field_name : TDF_Buildins.TDFSTRING;
      p_found_at : EXP;
      p_field_type : DIAG_TYPE)
     return DIAG_FIELD;

   function c_make_diag_tag
     (p_num : TDF_Buildins.TDFINT)
     return DIAG_TAG;

   function c_make_diag_tagdef
     (p_tno : TDF_Buildins.TDFINT;
      p_dtype : DIAG_TYPE)
     return DIAG_TAGDEF;

   function c_add_diag_const
     (p_qual : DIAG_TQ)
     return DIAG_TQ;

   function c_add_diag_volatile
     (p_qual : DIAG_TQ)
     return DIAG_TQ;

   function c_diag_tq_null return DIAG_TQ;

   function c_diag_type_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return DIAG_TYPE;

   function c_diag_array
     (p_element_type : DIAG_TYPE;
      p_stride : EXP;
      p_lower_bound : EXP;
      p_upper_bound : EXP;
      p_index_type : DIAG_TYPE)
     return DIAG_TYPE;

   function c_diag_bitfield
     (p_type : DIAG_TYPE;
      p_number_of_bits : NAT)
     return DIAG_TYPE;

   function c_diag_enum
     (p_base_type : DIAG_TYPE;
      p_enum_name : TDF_Buildins.TDFSTRING;
      p_values : ENUM_VALUES_LIST)
     return DIAG_TYPE;

   function c_diag_floating_variety
     (p_var : FLOATING_VARIETY)
     return DIAG_TYPE;

   function c_diag_loc
     (p_object : DIAG_TYPE;
      p_qualifier : DIAG_TQ)
     return DIAG_TYPE;

   function c_diag_proc
     (p_params : DIAG_TYPE_LIST;
      p_optional_args : BOOL;
      p_result_type : DIAG_TYPE)
     return DIAG_TYPE;

   function c_diag_ptr
     (p_object : DIAG_TYPE;
      p_qualifier : DIAG_TQ)
     return DIAG_TYPE;

   function c_diag_struct
     (p_tdf_shape : SHAPE;
      p_src_name : TDF_Buildins.TDFSTRING;
      p_fields : DIAG_FIELD_LIST)
     return DIAG_TYPE;

   function c_diag_type_null return DIAG_TYPE;

   function c_diag_union
     (p_tdf_shape : SHAPE;
      p_src_name : TDF_Buildins.TDFSTRING;
      p_fields : DIAG_FIELD_LIST)
     return DIAG_TYPE;

   function c_diag_variety
     (p_var : VARIETY)
     return DIAG_TYPE;

   function c_use_diag_tag
     (p_dtag : DIAG_TAG)
     return DIAG_TYPE;

   function c_build_diagtype_unit
     (p_no_labels : TDF_Buildins.TDFINT;
      p_tagdefs : DIAG_TAGDEF_LIST)
     return DIAG_TYPE_UNIT;

   function c_build_diag_unit
     (p_no_labels : TDF_Buildins.TDFINT;
      p_descriptors : DIAG_DESCRIPTOR_LIST)
     return DIAG_UNIT;

   function c_make_enum_values
     (p_value : EXP;
      p_src_name : TDF_Buildins.TDFSTRING)
     return ENUM_VALUES;

   function c_nil_access return ERROR_CODE;

   function c_overflow return ERROR_CODE;

   function c_stack_overflow return ERROR_CODE;

   function c_errt_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return ERROR_TREATMENT;

   function c_errt_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return ERROR_TREATMENT;

   function c_continue return ERROR_TREATMENT;

   function c_error_jump
     (p_lab : LABEL)
     return ERROR_TREATMENT;

   function c_trap
     (p_trap_list : ERROR_CODE_LIST)
     return ERROR_TREATMENT;

   function c_wrap return ERROR_TREATMENT;

   function c_impossible return ERROR_TREATMENT;

   function c_exp_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return EXP;

   function c_exp_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return EXP;

   function c_abs
     (p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP)
     return EXP;

   function c_add_to_ptr
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_and
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_apply_proc
     (p_result_shape : SHAPE;
      p_p : EXP;
      p_params : EXP_LIST;
      p_var_param : EXP_OPTION)
     return EXP;

   function c_apply_general_proc
     (p_result_shape : SHAPE;
      p_prcprops : PROCPROPS_OPTION;
      p_p : EXP;
      p_caller_params_intro : OTAGEXP_LIST;
      p_callee_params : CALLEES;
      p_postlude : EXP)
     return EXP;

   function c_assign
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_assign_with_mode
     (p_md : TRANSFER_MODE;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_bitfield_assign
     (p_arg1 : EXP;
      p_arg2 : EXP;
      p_arg3 : EXP)
     return EXP;

   function c_bitfield_assign_with_mode
     (p_md : TRANSFER_MODE;
      p_arg1 : EXP;
      p_arg2 : EXP;
      p_arg3 : EXP)
     return EXP;

   function c_bitfield_contents
     (p_v : BITFIELD_VARIETY;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_bitfield_contents_with_mode
     (p_md : TRANSFER_MODE;
      p_v : BITFIELD_VARIETY;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_case
     (p_exhaustive : BOOL;
      p_control : EXP;
      p_branches : CASELIM_LIST)
     return EXP;

   function c_change_bitfield_to_int
     (p_v : VARIETY;
      p_arg1 : EXP)
     return EXP;

   function c_change_floating_variety
     (p_flpt_err : ERROR_TREATMENT;
      p_r : FLOATING_VARIETY;
      p_arg1 : EXP)
     return EXP;

   function c_change_variety
     (p_ov_err : ERROR_TREATMENT;
      p_r : VARIETY;
      p_arg1 : EXP)
     return EXP;

   function c_change_int_to_bitfield
     (p_bv : BITFIELD_VARIETY;
      p_arg1 : EXP)
     return EXP;

   function c_complex_conjugate
     (p_c : EXP)
     return EXP;

   function c_component
     (p_sha : SHAPE;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_concat_nof
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_conditional
     (p_alt_label_intro : LABEL;
      p_first : EXP;
      p_alt : EXP)
     return EXP;

   function c_contents
     (p_s : SHAPE;
      p_arg1 : EXP)
     return EXP;

   function c_contents_with_mode
     (p_md : TRANSFER_MODE;
      p_s : SHAPE;
      p_arg1 : EXP)
     return EXP;

   function c_current_env return EXP;

   function c_div0
     (p_div_by_zero_err : ERROR_TREATMENT;
      p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_div1
     (p_div_by_zero_err : ERROR_TREATMENT;
      p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_div2
     (p_div_by_zero_err : ERROR_TREATMENT;
      p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_env_offset
     (p_fa : ALIGNMENT;
      p_y : ALIGNMENT;
      p_t : TAG)
     return EXP;

   function c_env_size
     (p_proctag : TAG)
     return EXP;

   function c_fail_installer
     (p_message : STRING)
     return EXP;

   function c_float_int
     (p_flpt_err : ERROR_TREATMENT;
      p_f : FLOATING_VARIETY;
      p_arg1 : EXP)
     return EXP;

   function c_floating_abs
     (p_flpt_err : ERROR_TREATMENT;
      p_arg1 : EXP)
     return EXP;

   function c_floating_div
     (p_flpt_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_floating_minus
     (p_flpt_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_floating_maximum
     (p_flpt_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_floating_minimum
     (p_flpt_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_floating_mult
     (p_flpt_err : ERROR_TREATMENT;
      p_arg1 : EXP_LIST)
     return EXP;

   function c_floating_negate
     (p_flpt_err : ERROR_TREATMENT;
      p_arg1 : EXP)
     return EXP;

   function c_floating_plus
     (p_flpt_err : ERROR_TREATMENT;
      p_arg1 : EXP_LIST)
     return EXP;

   function c_floating_power
     (p_flpt_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_floating_test
     (p_prob : NAT_OPTION;
      p_flpt_err : ERROR_TREATMENT;
      p_nt : NTEST;
      p_dest : LABEL;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_goto
     (p_dest : LABEL)
     return EXP;

   function c_goto_local_lv
     (p_arg1 : EXP)
     return EXP;

   function c_identify
     (p_opt_access : ACCESS_OPTION;
      p_name_intro : TAG;
      p_definition : EXP;
      p_body : EXP)
     return EXP;

   function c_ignorable
     (p_arg1 : EXP)
     return EXP;

   function c_imaginary_part
     (p_arg1 : EXP)
     return EXP;

   function c_initial_value
     (p_init : EXP)
     return EXP;

   function c_integer_test
     (p_prob : NAT_OPTION;
      p_nt : NTEST;
      p_dest : LABEL;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_labelled
     (p_placelabs_intro : LABEL_LIST;
      p_starter : EXP;
      p_places : EXP_LIST)
     return EXP;

   function c_last_local
     (p_x : EXP)
     return EXP;

   function c_local_alloc
     (p_arg1 : EXP)
     return EXP;

   function c_local_alloc_check
     (p_arg1 : EXP)
     return EXP;

   function c_local_free
     (p_a : EXP;
      p_p : EXP)
     return EXP;

   function c_local_free_all return EXP;

   function c_long_jump
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_make_complex
     (p_c : FLOATING_VARIETY;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_make_compound
     (p_arg1 : EXP;
      p_arg2 : EXP_LIST)
     return EXP;

   function c_make_floating
     (p_f : FLOATING_VARIETY;
      p_rm : ROUNDING_MODE;
      p_negative : BOOL;
      p_mantissa : STRING;
      p_base : NAT;
      p_exponent : SIGNED_NAT)
     return EXP;

   function c_make_general_proc
     (p_result_shape : SHAPE;
      p_prcprops : PROCPROPS_OPTION;
      p_caller_intro : TAGSHACC_LIST;
      p_callee_intro : TAGSHACC_LIST;
      p_body : EXP)
     return EXP;

   function c_make_int
     (p_v : VARIETY;
      p_value : SIGNED_NAT)
     return EXP;

   function c_make_local_lv
     (p_lab : LABEL)
     return EXP;

   function c_make_nof
     (p_arg1 : EXP_LIST)
     return EXP;

   function c_make_nof_int
     (p_v : VARIETY;
      p_str : STRING)
     return EXP;

   function c_make_null_local_lv return EXP;

   function c_make_null_proc return EXP;

   function c_make_null_ptr
     (p_a : ALIGNMENT)
     return EXP;

   function c_make_proc
     (p_result_shape : SHAPE;
      p_params_intro : TAGSHACC_LIST;
      p_var_intro : TAGACC_OPTION;
      p_body : EXP)
     return EXP;

   function c_make_stack_limit
     (p_stack_base : EXP;
      p_frame_size : EXP;
      p_alloc_size : EXP)
     return EXP;

   function c_make_top return EXP;

   function c_make_value
     (p_s : SHAPE)
     return EXP;

   function c_maximum
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_minimum
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_minus
     (p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_move_some
     (p_md : TRANSFER_MODE;
      p_arg1 : EXP;
      p_arg2 : EXP;
      p_arg3 : EXP)
     return EXP;

   function c_mult
     (p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_n_copies
     (p_n : NAT;
      p_arg1 : EXP)
     return EXP;

   function c_negate
     (p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP)
     return EXP;

   function c_not
     (p_arg1 : EXP)
     return EXP;

   function c_obtain_tag
     (p_t : TAG)
     return EXP;

   function c_offset_add
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_offset_div
     (p_v : VARIETY;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_offset_div_by_int
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_offset_max
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_offset_mult
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_offset_negate
     (p_arg1 : EXP)
     return EXP;

   function c_offset_pad
     (p_a : ALIGNMENT;
      p_arg1 : EXP)
     return EXP;

   function c_offset_subtract
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_offset_test
     (p_prob : NAT_OPTION;
      p_nt : NTEST;
      p_dest : LABEL;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_offset_zero
     (p_a : ALIGNMENT)
     return EXP;

   function c_or
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_plus
     (p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_pointer_test
     (p_prob : NAT_OPTION;
      p_nt : NTEST;
      p_dest : LABEL;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_power
     (p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_proc_test
     (p_prob : NAT_OPTION;
      p_nt : NTEST;
      p_dest : LABEL;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_profile
     (p_uses : NAT)
     return EXP;

   function c_real_part
     (p_arg1 : EXP)
     return EXP;

   function c_rem0
     (p_div_by_zero_err : ERROR_TREATMENT;
      p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_rem1
     (p_div_by_zero_err : ERROR_TREATMENT;
      p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_rem2
     (p_div_by_zero_err : ERROR_TREATMENT;
      p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_repeat
     (p_repeat_label_intro : LABEL;
      p_start : EXP;
      p_body : EXP)
     return EXP;

   function c_return
     (p_arg1 : EXP)
     return EXP;

   function c_return_to_label
     (p_lab_val : EXP)
     return EXP;

   function c_round_with_mode
     (p_flpt_err : ERROR_TREATMENT;
      p_mode : ROUNDING_MODE;
      p_r : VARIETY;
      p_arg1 : EXP)
     return EXP;

   function c_rotate_left
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_rotate_right
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_sequence
     (p_statements : EXP_LIST;
      p_result : EXP)
     return EXP;

   function c_set_stack_limit
     (p_lim : EXP)
     return EXP;

   function c_shape_offset
     (p_s : SHAPE)
     return EXP;

   function c_shift_left
     (p_ov_err : ERROR_TREATMENT;
      p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_shift_right
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_subtract_ptrs
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_tail_call
     (p_prcprops : PROCPROPS_OPTION;
      p_p : EXP;
      p_callee_params : CALLEES)
     return EXP;

   function c_untidy_return
     (p_arg1 : EXP)
     return EXP;

   function c_variable
     (p_opt_access : ACCESS_OPTION;
      p_name_intro : TAG;
      p_init : EXP;
      p_body : EXP)
     return EXP;

   function c_xor
     (p_arg1 : EXP;
      p_arg2 : EXP)
     return EXP;

   function c_make_extern_link
     (p_el : LINKEXTERN_LIST)
     return EXTERN_LINK;

   function c_string_extern
     (p_s : TDF_Buildins.TDFIDENT)
     return EXTERNAL;

   function c_unique_extern
     (p_u : UNIQUE)
     return EXTERNAL;

   function c_chain_extern
     (p_s : TDF_Buildins.TDFIDENT;
      p_prev : TDF_Buildins.TDFINT)
     return EXTERNAL;

   function c_filename_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return FILENAME;

   function c_make_filename
     (p_date : NAT;
      p_machine : TDF_Buildins.TDFSTRING;
      p_file : TDF_Buildins.TDFSTRING)
     return FILENAME;

   function c_flvar_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return FLOATING_VARIETY;

   function c_flvar_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return FLOATING_VARIETY;

   function c_flvar_parms
     (p_base : NAT;
      p_mantissa_digits : NAT;
      p_minimum_exponent : NAT;
      p_maximum_exponent : NAT)
     return FLOATING_VARIETY;

   function c_complex_parms
     (p_base : NAT;
      p_mantissa_digits : NAT;
      p_minimum_exponent : NAT;
      p_maximum_exponent : NAT)
     return FLOATING_VARIETY;

   function c_float_of_complex
     (p_csh : SHAPE)
     return FLOATING_VARIETY;

   function c_complex_of_float
     (p_fsh : SHAPE)
     return FLOATING_VARIETY;

   function c_make_group
     (p_us : UNIT_LIST)
     return GROUP;

   function c_label_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return LABEL;

   function c_make_label
     (p_labelno : TDF_Buildins.TDFINT)
     return LABEL;

   function c_make_link
     (p_unit_name : TDF_Buildins.TDFINT;
      p_capsule_name : TDF_Buildins.TDFINT)
     return LINK;

   function c_make_linkextern
     (p_internal : TDF_Buildins.TDFINT;
      p_ext : EXTERNAL)
     return LINKEXTERN;

   function c_static_name_def
     (p_assexp : EXP;
      p_id : TDF_Buildins.TDFSTRING)
     return LINKINFO;

   function c_make_comment
     (p_n : TDF_Buildins.TDFSTRING)
     return LINKINFO;

   function c_make_weak_defn
     (p_namer : EXP;
      p_val : EXP)
     return LINKINFO;

   function c_make_weak_symbol
     (p_id : TDF_Buildins.TDFSTRING;
      p_val : EXP)
     return LINKINFO;

   function c_make_linkinfos
     (p_no_labels : TDF_Buildins.TDFINT;
      p_tds : LINKINFO_LIST)
     return LINKINFO_PROPS;

   function c_make_links
     (p_ls : LINK_LIST)
     return LINKS;

   function c_nat_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return NAT;

   function c_nat_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return NAT;

   function c_computed_nat
     (p_arg : EXP)
     return NAT;

   function c_error_val
     (p_err : ERROR_CODE)
     return NAT;

   function c_make_nat
     (p_n : TDF_Buildins.TDFINT)
     return NAT;

   function c_ntest_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return NTEST;

   function c_ntest_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return NTEST;

   function c_equal return NTEST;

   function c_greater_than return NTEST;

   function c_greater_than_or_equal return NTEST;

   function c_less_than return NTEST;

   function c_less_than_or_equal return NTEST;

   function c_not_equal return NTEST;

   function c_not_greater_than return NTEST;

   function c_not_greater_than_or_equal return NTEST;

   function c_not_less_than return NTEST;

   function c_not_less_than_or_equal return NTEST;

   function c_less_than_or_greater_than return NTEST;

   function c_not_less_than_and_not_greater_than return NTEST;

   function c_comparable return NTEST;

   function c_not_comparable return NTEST;

   function c_make_otagexp
     (p_tgopt : TAG_OPTION;
      p_e : EXP)
     return OTAGEXP;

   function c_procprops_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return PROCPROPS;

   function c_procprops_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return PROCPROPS;

   function c_add_procprops
     (p_arg1 : PROCPROPS;
      p_arg2 : PROCPROPS)
     return PROCPROPS;

   function c_check_stack return PROCPROPS;

   function c_inline return PROCPROPS;

   function c_no_long_jump_dest return PROCPROPS;

   function c_untidy return PROCPROPS;

   function c_var_callees return PROCPROPS;

   function c_var_callers return PROCPROPS;

   function c_rounding_mode_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return ROUNDING_MODE;

   function c_rounding_mode_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return ROUNDING_MODE;

   function c_round_as_state return ROUNDING_MODE;

   function c_to_nearest return ROUNDING_MODE;

   function c_toward_larger return ROUNDING_MODE;

   function c_toward_smaller return ROUNDING_MODE;

   function c_toward_zero return ROUNDING_MODE;

   function c_shape_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return SHAPE;

   function c_shape_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return SHAPE;

   function c_bitfield
     (p_bf_var : BITFIELD_VARIETY)
     return SHAPE;

   function c_bottom return SHAPE;

   function c_compound
     (p_sz : EXP)
     return SHAPE;

   function c_floating
     (p_fv : FLOATING_VARIETY)
     return SHAPE;

   function c_integer
     (p_var : VARIETY)
     return SHAPE;

   function c_nof
     (p_n : NAT;
      p_s : SHAPE)
     return SHAPE;

   function c_offset
     (p_arg1 : ALIGNMENT;
      p_arg2 : ALIGNMENT)
     return SHAPE;

   function c_pointer
     (p_arg : ALIGNMENT)
     return SHAPE;

   function c_proc return SHAPE;

   function c_top return SHAPE;

   function c_signed_nat_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return SIGNED_NAT;

   function c_signed_nat_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return SIGNED_NAT;

   function c_computed_signed_nat
     (p_arg : EXP)
     return SIGNED_NAT;

   function c_make_signed_nat
     (p_neg : TDF_Buildins.TDFBOOL;
      p_n : TDF_Buildins.TDFINT)
     return SIGNED_NAT;

   function c_snat_from_nat
     (p_neg : BOOL;
      p_n : NAT)
     return SIGNED_NAT;

   function c_access return SORTNAME;

   function c_al_tag return SORTNAME;

   function c_alignment_sort return SORTNAME;

   function c_bitfield_variety return SORTNAME;

   function c_bool return SORTNAME;

   function c_error_treatment return SORTNAME;

   function c_exp return SORTNAME;

   function c_floating_variety return SORTNAME;

   function c_foreign_sort
     (p_foreign_name : STRING)
     return SORTNAME;

   function c_label return SORTNAME;

   function c_nat return SORTNAME;

   function c_ntest return SORTNAME;

   function c_procprops return SORTNAME;

   function c_rounding_mode return SORTNAME;

   function c_shape return SORTNAME;

   function c_signed_nat return SORTNAME;

   function c_string return SORTNAME;

   function c_tag return SORTNAME;

   function c_transfer_mode return SORTNAME;

   function c_token
     (p_result : SORTNAME;
      p_params : SORTNAME_LIST)
     return SORTNAME;

   function c_variety return SORTNAME;

   function c_make_sourcemark
     (p_file : FILENAME;
      p_line_no : NAT;
      p_char_offset : NAT)
     return SOURCEMARK;

   function c_string_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return STRING;

   function c_string_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return STRING;

   function c_concat_string
     (p_arg1 : STRING;
      p_arg2 : STRING)
     return STRING;

   function c_make_string
     (p_arg : TDF_Buildins.TDFSTRING)
     return STRING;

   function c_tag_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return TAG;

   function c_make_tag
     (p_tagno : TDF_Buildins.TDFINT)
     return TAG;

   function c_make_tagacc
     (p_tg : TAG;
      p_acc : ACCESS_OPTION)
     return TAGACC;

   function c_make_id_tagdec
     (p_t_intro : TDF_Buildins.TDFINT;
      p_acc : ACCESS_OPTION;
      p_signature : STRING_OPTION;
      p_x : SHAPE)
     return TAGDEC;

   function c_make_var_tagdec
     (p_t_intro : TDF_Buildins.TDFINT;
      p_acc : ACCESS_OPTION;
      p_signature : STRING_OPTION;
      p_x : SHAPE)
     return TAGDEC;

   function c_common_tagdec
     (p_t_intro : TDF_Buildins.TDFINT;
      p_acc : ACCESS_OPTION;
      p_signature : STRING_OPTION;
      p_x : SHAPE)
     return TAGDEC;

   function c_make_tagdecs
     (p_no_labels : TDF_Buildins.TDFINT;
      p_tds : TAGDEC_LIST)
     return TAGDEC_PROPS;

   function c_make_id_tagdef
     (p_t : TDF_Buildins.TDFINT;
      p_signature : STRING_OPTION;
      p_e : EXP)
     return TAGDEF;

   function c_make_var_tagdef
     (p_t : TDF_Buildins.TDFINT;
      p_opt_access : ACCESS_OPTION;
      p_signature : STRING_OPTION;
      p_e : EXP)
     return TAGDEF;

   function c_common_tagdef
     (p_t : TDF_Buildins.TDFINT;
      p_opt_access : ACCESS_OPTION;
      p_signature : STRING_OPTION;
      p_e : EXP)
     return TAGDEF;

   function c_make_tagdefs
     (p_no_labels : TDF_Buildins.TDFINT;
      p_tds : TAGDEF_LIST)
     return TAGDEF_PROPS;

   function c_make_tagshacc
     (p_sha : SHAPE;
      p_opt_access : ACCESS_OPTION;
      p_tg_intro : TAG)
     return TAGSHACC;

   function c_make_tokdec
     (p_tok : TDF_Buildins.TDFINT;
      p_signature : STRING_OPTION;
      p_s : SORTNAME)
     return TOKDEC;

   function c_make_tokdecs
     (p_tds : TOKDEC_LIST)
     return TOKDEC_PROPS;

   function c_make_tokdef
     (p_tok : TDF_Buildins.TDFINT;
      p_signature : STRING_OPTION;
      p_def : TDF_Buildins.BITSTREAM)
     return TOKDEF;

   function c_make_tokdefs
     (p_no_labels : TDF_Buildins.TDFINT;
      p_tds : TOKDEF_LIST)
     return TOKDEF_PROPS;

   function c_token_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return TOKEN;

   function c_make_tok
     (p_tokno : TDF_Buildins.TDFINT)
     return TOKEN;

   function c_use_tokdef
     (p_tdef : TDF_Buildins.BITSTREAM)
     return TOKEN;

   function c_token_definition
     (p_result_sort : SORTNAME;
      p_tok_params : TOKFORMALS_LIST)
     return TOKEN_DEFN;

   function c_make_tokformals
     (p_sn : SORTNAME;
      p_tk : TDF_Buildins.TDFINT)
     return TOKFORMALS;

   function c_transfer_mode_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return TRANSFER_MODE;

   function c_transfer_mode_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return TRANSFER_MODE;

   function c_add_modes
     (p_md1 : TRANSFER_MODE;
      p_md2 : TRANSFER_MODE)
     return TRANSFER_MODE;

   function c_overlap return TRANSFER_MODE;

   function c_standard_transfer_mode return TRANSFER_MODE;

   function c_trap_on_nil return TRANSFER_MODE;

   function c_volatile return TRANSFER_MODE;

   function c_complete return TRANSFER_MODE;

   function c_make_unique
     (p_text : TDFIDENT_LIST)
     return UNIQUE;

   function c_make_unit
     (p_local_vars : TDFINT_LIST;
      p_lks : LINKS_LIST;
      p_properties : TDF_Buildins.BYTESTREAM)
     return UNIT;

   function c_var_apply_token
     (p_token_value : TOKEN;
      p_token_args : TDF_Buildins.BITSTREAM)
     return VARIETY;

   function c_var_cond
     (p_control : EXP;
      p_e1 : TDF_Buildins.BITSTREAM;
      p_e2 : TDF_Buildins.BITSTREAM)
     return VARIETY;

   function c_var_limits
     (p_lower_bound : SIGNED_NAT;
      p_upper_bound : SIGNED_NAT)
     return VARIETY;

   function c_var_width
     (p_signed_width : BOOL;
      p_width : NAT)
     return VARIETY;

   function c_make_version
     (p_major_version : TDF_Buildins.TDFINT;
      p_minor_version : TDF_Buildins.TDFINT)
     return VERSION;

   function c_user_info
     (p_information : STRING)
     return VERSION;

   function c_make_versions
     (p_version_info : VERSION_LIST)
     return VERSION_PROPS;

   procedure Write
     (Name  : File_Name;
      Value : CAPSULE);

private

   type ACCESS_SORT is record
      Data : Bytes.Bit_Vector;
   end record;

   type ACCESS_OPTION is record
      Data : Bytes.Bit_Vector;
   end record;

   type AL_TAG is record
      Data : Bytes.Bit_Vector;
   end record;

   type AL_TAGDEF is record
      Data : Bytes.Bit_Vector;
   end record;

   type AL_TAGDEF_LIST is record
      Count : Natural := 0;  --  AL_TAGDEF
      Data  : Bytes.Bit_Vector;
   end record;

   type AL_TAGDEF_PROPS is record
      Data : Bytes.Bit_Vector;
   end record;

   type ALIGNMENT is record
      Data : Bytes.Bit_Vector;
   end record;

   type BITFIELD_VARIETY is record
      Data : Bytes.Bit_Vector;
   end record;


   type BOOL is record
      Data : Bytes.Bit_Vector;
   end record;


   type CALLEES is record
      Data : Bytes.Bit_Vector;
   end record;

   type CAPSULE is record
      Data : Bytes.Bit_Vector;
   end record;

   type CAPSULE_LINK is record
      Data : Bytes.Bit_Vector;
   end record;

   type CAPSULE_LINK_LIST is record
      Count : Natural := 0;  --  CAPSULE_LINK
      Data  : Bytes.Bit_Vector;
   end record;

   type CASELIM is record
      Data : Bytes.Bit_Vector;
   end record;

   type CASELIM_LIST is record
      Count : Natural := 0;
      Data  : Bytes.Bit_Vector;
   end record;

   type DIAG_DESCRIPTOR is record
      Data : Bytes.Bit_Vector;
   end record;

   type DIAG_DESCRIPTOR_LIST is record
      Count : Natural := 0;  --  DIAG_DESCRIPTOR
      Data  : Bytes.Bit_Vector;
   end record;

   type DIAG_FIELD is record
      Data : Bytes.Bit_Vector;
   end record;

   type DIAG_FIELD_LIST is record
      Count : Natural := 0;
      Data  : Bytes.Bit_Vector;
   end record;

   type DIAG_TAG is record
      Data : Bytes.Bit_Vector;
   end record;

   type DIAG_TAGDEF is record
      Data : Bytes.Bit_Vector;
   end record;

   type DIAG_TAGDEF_LIST is record
      Count : Natural := 0;  --  DIAG_TAGDEF
      Data  : Bytes.Bit_Vector;
   end record;

   type DIAG_TQ is record
      Data : Bytes.Bit_Vector;
   end record;

   type DIAG_TYPE is record
      Data : Bytes.Bit_Vector;
   end record;

   type DIAG_TYPE_LIST is record
      Count : Natural := 0;
      Data  : Bytes.Bit_Vector;
   end record;

   type DIAG_TYPE_UNIT is record
      Data : Bytes.Bit_Vector;
   end record;

   type DIAG_UNIT is record
      Data : Bytes.Bit_Vector;
   end record;

   type ENUM_VALUES is record
      Data : Bytes.Bit_Vector;
   end record;

   type ENUM_VALUES_LIST is record
      Count : Natural := 0;
      Data  : Bytes.Bit_Vector;
   end record;

   type ERROR_CODE is record
      Data : Bytes.Bit_Vector;
   end record;

   type ERROR_CODE_LIST is record
      Count : Natural := 0;
      Data  : Bytes.Bit_Vector;
   end record;

   type ERROR_TREATMENT is record
      Data : Bytes.Bit_Vector;
   end record;

   type EXP is record
      Data : Bytes.Bit_Vector;
   end record;

   type EXP_LIST is record
      Count : Natural := 0;
      Data  : Bytes.Bit_Vector;
   end record;

   type EXP_OPTION is record
      Data : Bytes.Bit_Vector;
   end record;

   type EXTERN_LINK is record
      Data : Bytes.Bit_Vector;
   end record;

   type EXTERN_LINK_LIST is record
      Count : Natural := 0;  --  EXTERN_LINK
      Data  : Bytes.Bit_Vector;
   end record;

   type EXTERNAL is record
      Data : Bytes.Bit_Vector;
   end record;

   type FILENAME is record
      Data : Bytes.Bit_Vector;
   end record;

   type FLOATING_VARIETY is record
      Data : Bytes.Bit_Vector;
   end record;

   type GROUP is record
      Data : Bytes.Bit_Vector;
   end record;

   type GROUP_LIST is record
      Count : Natural := 0;  --  GROUP
      Data  : Bytes.Bit_Vector;
   end record;

   type LABEL is record
      Data : Bytes.Bit_Vector;
   end record;

   type LABEL_LIST is record
      Count : Natural := 0;
      Data  : Bytes.Bit_Vector;
   end record;

   type LINK is record
      Data : Bytes.Bit_Vector;
   end record;

   type LINK_LIST is record
      Count : Natural := 0;  --  LINK
      Data  : Bytes.Bit_Vector;
   end record;

   type LINKEXTERN is record
      Data : Bytes.Bit_Vector;
   end record;

   type LINKEXTERN_LIST is record
      Count : Natural := 0;  --  LINKEXTERN
      Data  : Bytes.Bit_Vector;
   end record;

   type LINKINFO is record
      Data : Bytes.Bit_Vector;
   end record;

   type LINKINFO_LIST is record
      Count : Natural := 0;  --  LINKINFO
      Data  : Bytes.Bit_Vector;
   end record;

   type LINKINFO_PROPS is record
      Data : Bytes.Bit_Vector;
   end record;

   type LINKS is record
      Data : Bytes.Bit_Vector;
   end record;

   type LINKS_LIST is record
      Count : Natural := 0;  --  LINKS
      Data  : Bytes.Bit_Vector;
   end record;

   type NAT is record
      Data : Bytes.Bit_Vector;
   end record;

   type NAT_OPTION is record
      Data : Bytes.Bit_Vector;
   end record;

   type NTEST is record
      Data : Bytes.Bit_Vector;
   end record;

   type OTAGEXP is record
      Data : Bytes.Bit_Vector;
   end record;

   type OTAGEXP_LIST is record
      Count : Natural := 0;
      Data  : Bytes.Bit_Vector;
   end record;

   type PROCPROPS is record
      Data : Bytes.Bit_Vector;
   end record;

   type PROCPROPS_OPTION is record
      Data : Bytes.Bit_Vector;
   end record;

   type ROUNDING_MODE is record
      Data : Bytes.Bit_Vector;
   end record;

   type SHAPE is record
      Data : Bytes.Bit_Vector;
   end record;

   type SIGNED_NAT is record
      Data : Bytes.Bit_Vector;
   end record;

   type SORTNAME is record
      Data : Bytes.Bit_Vector;
   end record;

   type SORTNAME_LIST is record
      Count : Natural := 0;
      Data  : Bytes.Bit_Vector;
   end record;

   type SOURCEMARK is record
      Data : Bytes.Bit_Vector;
   end record;

   type STRING is record
      Data : Bytes.Bit_Vector;
   end record;

   type STRING_OPTION is record
      Data : Bytes.Bit_Vector;
   end record;

   type TAG is record
      Data : Bytes.Bit_Vector;
   end record;

   type TAG_OPTION is record
      Data : Bytes.Bit_Vector;
   end record;

   type TAGACC is record
      Data : Bytes.Bit_Vector;
   end record;

   type TAGACC_OPTION is record
      Data : Bytes.Bit_Vector;
   end record;

   type TAGDEC is record
      Data : Bytes.Bit_Vector;
   end record;

   type TAGDEC_LIST is record
      Count : Natural := 0;  --  TAGDEC
      Data  : Bytes.Bit_Vector;
   end record;

   type TAGDEC_PROPS is record
      Data : Bytes.Bit_Vector;
   end record;

   type TAGDEF is record
      Data : Bytes.Bit_Vector;
   end record;

   type TAGDEF_LIST is record
      Count : Natural := 0;  --  TAGDEF
      Data  : Bytes.Bit_Vector;
   end record;

   type TAGDEF_PROPS is record
      Data : Bytes.Bit_Vector;
   end record;

   type TAGSHACC is record
      Data : Bytes.Bit_Vector;
   end record;

   type TAGSHACC_LIST is record
      Count : Natural := 0;
      Data  : Bytes.Bit_Vector;
   end record;



   type TDFIDENT_LIST is record
      Count : Natural := 0;  --  TDFIDENT
      Data  : Bytes.Bit_Vector;
   end record;


   type TDFINT_LIST is record
      Count : Natural := 0;  --  TDFINT
      Data  : Bytes.Bit_Vector;
   end record;


   type TOKDEC is record
      Data : Bytes.Bit_Vector;
   end record;

   type TOKDEC_LIST is record
      Count : Natural := 0;  --  TOKDEC
      Data  : Bytes.Bit_Vector;
   end record;

   type TOKDEC_PROPS is record
      Data : Bytes.Bit_Vector;
   end record;

   type TOKDEF is record
      Data : Bytes.Bit_Vector;
   end record;

   type TOKDEF_LIST is record
      Count : Natural := 0;  --  TOKDEF
      Data  : Bytes.Bit_Vector;
   end record;

   type TOKDEF_PROPS is record
      Data : Bytes.Bit_Vector;
   end record;

   type TOKEN is record
      Data : Bytes.Bit_Vector;
   end record;

   type TOKEN_DEFN is record
      Data : Bytes.Bit_Vector;
   end record;

   type TOKFORMALS is record
      Data : Bytes.Bit_Vector;
   end record;

   type TOKFORMALS_LIST is record
      Count : Natural := 0;
      Data  : Bytes.Bit_Vector;
   end record;

   type TRANSFER_MODE is record
      Data : Bytes.Bit_Vector;
   end record;

   type UNIQUE is record
      Data : Bytes.Bit_Vector;
   end record;

   type UNIT is record
      Data : Bytes.Bit_Vector;
   end record;

   type UNIT_LIST is record
      Count : Natural := 0;  --  UNIT
      Data  : Bytes.Bit_Vector;
   end record;

   type VARIETY is record
      Data : Bytes.Bit_Vector;
   end record;

   type VERSION is record
      Data : Bytes.Bit_Vector;
   end record;

   type VERSION_LIST is record
      Count : Natural := 0;  --  VERSION
      Data  : Bytes.Bit_Vector;
   end record;

   type VERSION_PROPS is record
      Data : Bytes.Bit_Vector;
   end record;


end TDF;
