--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

with TDF_Buildins;
with Bytes;

package body TDF_Capsules is

   ------------------------
   -- Append_Extenal_Tag --
   ------------------------

   procedure Append_Extenal_Tag
     (Self : in out Capsule;
      Tree : USERPK.TREE;
      Ext  : TDF.EXTERNAL;
      Id   : out Natural) is
   begin
      Id := Tree_Id_Map.Length (Self.Extenal_Tags);
      Tree_Id_Map.Insert (Self.Extenal_Tags, Tree, (Id, Ext));
   end Append_Extenal_Tag;

   ----------
   -- Hash --
   ----------

   function Hash (Value : USERPK.TREE) return Natural is
   begin
      return (abs Integer (Value.TPG) * 256 + Natural (Value.TTY)) * 256
        + Natural (Value.TLN);
   end Hash;

   -----------
   -- Write --
   -----------

   procedure Write (Value : Capsule) is
      --  Create TDF capsule for `int tmp;`

      Prop_Names       : TDF.TDFIDENT_LIST;
      Capsule_Linking  : TDF.CAPSULE_LINK_LIST;
      External_Linkage : TDF.EXTERN_LINK_LIST;
      Groups           : TDF.GROUP_LIST;

   begin
      TDF.Append (Prop_Names, TDF_Buildins.To_TDFIDENT ("tld"));
      TDF.Append (Prop_Names, TDF_Buildins.To_TDFIDENT ("versions"));
      TDF.Append (Prop_Names, TDF_Buildins.To_TDFIDENT ("tagdec"));
      TDF.Append (Prop_Names, TDF_Buildins.To_TDFIDENT ("tagdef"));

      TDF.Append
        (Capsule_Linking,
         TDF.c_make_capsule_link
           (TDF_Buildins.To_TDFIDENT ("tag"),
            TDF_Buildins.To_TDFINT
              (Tree_Id_Map.Length (Value.Extenal_Tags))));

      TDF.Append
        (Capsule_Linking,
         TDF.c_make_capsule_link
           (p_sn => TDF_Buildins.To_TDFIDENT ("token"),
            p_n  => TDF_Buildins.To_TDFINT (1)));

      declare
         use USERPK;
         Key : USERPK.TREE := Tree_Id_Map.First_Key (Value.Extenal_Tags);
      begin
         while Key /= None loop
            TDF.Append
              (External_Linkage,
               TDF.c_make_extern_link
                 (TDF.List
                    (TDF.c_make_linkextern
                       (TDF_Buildins.To_TDFINT
                          (Tree_Id_Map.Get (Value.Extenal_Tags, Key).Id),
                        Tree_Id_Map.Get (Value.Extenal_Tags, Key).Ext))));

            Tree_Id_Map.Next_Key (Value.Extenal_Tags, Key);
         end loop;
      end;

      TDF.Append
        (External_Linkage,
         TDF.c_make_extern_link
           (TDF.List
                (TDF.c_make_linkextern
                     (TDF_Buildins.To_TDFINT (0),
                      TDF.c_string_extern
                        (TDF_Buildins.To_TDFIDENT ("~signed_int"))))));
      --  Make TLD unit
      declare
         Vars  : TDF.TDFINT_LIST;
         Links : TDF.LINKS_LIST;
         Units : TDF.UNIT_LIST;
         Raw   : Bytes.Bit_Vector;
      begin
         TDF_Buildins.Append_TDFINT (Raw, 1);  --  the format of the tld unit
         TDF_Buildins.Append_TDFINT (Raw, 7);  --  (used,declared,defined)
         TDF_Buildins.Append_TDFINT (Raw, 1);  --  (used)

         TDF.Append
           (Units,
            TDF.c_make_unit
              (p_local_vars => Vars,
               p_lks        => Links,
               p_properties => TDF_Buildins.To_BYTESTREAM (Raw)));

         TDF.Append (Groups, TDF.c_make_group (Units));
      end;

      declare
         Vars  : TDF.TDFINT_LIST;
         Links : TDF.LINKS_LIST;
         None  : TDF.LINK_LIST;
         Units : TDF.UNIT_LIST;
         Props : constant TDF.VERSION_PROPS :=
           TDF.c_make_versions
             (TDF.List
                (TDF.c_make_version
                   (TDF_Buildins.To_TDFINT (TDF.Version_Major),
                    TDF_Buildins.To_TDFINT (TDF.Version_Minor))));
      begin
         TDF.Append (Vars, TDF_Buildins.To_TDFINT (0));
         TDF.Append (Vars, TDF_Buildins.To_TDFINT (0));

         TDF.Append (Links, TDF.c_make_links (None));
         TDF.Append (Links, TDF.c_make_links (None));

         TDF.Append
           (Units,
            TDF.c_make_unit
              (p_local_vars => Vars,
               p_lks        => Links,
               p_properties => TDF.To_BYTESTREAM (Props)));

         TDF.Append (Groups, TDF.c_make_group (Units));
      end;

      --  Make tagdec unit
      declare
         Vars  : TDF.TDFINT_LIST;
         Links : TDF.LINKS_LIST;
         Units : TDF.UNIT_LIST;

         Empty : constant TDF_Buildins.BITSTREAM :=
           TDF_Buildins.To_BITSTREAM (Bytes.Empty);

         Shape : constant TDF.SHAPE :=
           TDF.c_integer
             (TDF.c_var_apply_token
                (p_token_value => TDF.c_make_tok
                   (TDF_Buildins.To_TDFINT (0)),
                 p_token_args  => Empty));

         Props : constant TDF.TAGDEC_PROPS :=
           TDF.c_make_tagdecs
             (TDF_Buildins.To_TDFINT (0),
              TDF.List
                (TDF.c_make_var_tagdec
                   (p_t_intro   => TDF_Buildins.To_TDFINT (0),
                    p_acc       => TDF.None,
                    p_signature => TDF.None,
                    p_x         => Shape)));
      begin
         TDF.Append (Vars, TDF_Buildins.To_TDFINT (1));
         TDF.Append (Vars, TDF_Buildins.To_TDFINT (1));

         TDF.Append
           (Links,
            TDF.c_make_links
              (TDF.List (TDF.c_make_link
               (TDF_Buildins.To_TDFINT (0), TDF_Buildins.To_TDFINT (0)))));

         TDF.Append
           (Links,
            TDF.c_make_links
              (TDF.List (TDF.c_make_link
               (TDF_Buildins.To_TDFINT (0), TDF_Buildins.To_TDFINT (0)))));

         TDF.Append
           (Units,
            TDF.c_make_unit
              (p_local_vars => Vars,
               p_lks        => Links,
               p_properties => TDF.To_BYTESTREAM (Props)));

         TDF.Append (Groups, TDF.c_make_group (Units));
      end;

      --  Make tagdef unit
      declare
         Vars  : TDF.TDFINT_LIST;
         Links : TDF.LINKS_LIST;
         Empty : constant TDF_Buildins.BITSTREAM :=
           TDF_Buildins.To_BITSTREAM (Bytes.Empty);

         Var : constant TDF.VARIETY := TDF.c_var_apply_token
           (p_token_value => TDF.c_make_tok
              (TDF_Buildins.To_TDFINT (0)),
            p_token_args  => Empty);

         Exp   : constant TDF.EXP := TDF.c_make_int
           (Var,
            TDF.c_make_signed_nat
              (TDF_Buildins.To_TDFBOOL (False),
               TDF_Buildins.To_TDFINT (0)));

         Units : TDF.UNIT_LIST;
         Props : constant TDF.TAGDEF_PROPS :=
           TDF.c_make_tagdefs
             (TDF_Buildins.To_TDFINT (0),
              TDF.List
                (TDF.c_make_var_tagdef
                   (TDF_Buildins.To_TDFINT (0),
                    TDF.None,
                    TDF.None,
                    Exp)));
      begin
         TDF.Append (Vars, TDF_Buildins.To_TDFINT (1));
         TDF.Append (Vars, TDF_Buildins.To_TDFINT (1));

         TDF.Append
           (Links,
            TDF.c_make_links
              (TDF.List (TDF.c_make_link
               (TDF_Buildins.To_TDFINT (0), TDF_Buildins.To_TDFINT (0)))));

         TDF.Append
           (Links,
            TDF.c_make_links
              (TDF.List (TDF.c_make_link
               (TDF_Buildins.To_TDFINT (0), TDF_Buildins.To_TDFINT (0)))));

         TDF.Append
           (Units,
            TDF.c_make_unit
              (p_local_vars => Vars,
               p_lks        => Links,
               p_properties => TDF.To_BYTESTREAM (Props)));

         TDF.Append (Groups, TDF.c_make_group (Units));
      end;

      declare
         C : constant TDF.CAPSULE := TDF.c_make_capsule
           (p_prop_names       => Prop_Names,
            p_capsule_linking  => Capsule_Linking,
            p_external_linkage => External_Linkage,
            p_groups           => Groups);
      begin
         TDF.Write ("c1.j", C);
      end;
   end Write;

end TDF_Capsules;
