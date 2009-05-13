package Rc_Tokens is



  type const_type is (
    intval,
    floatval,
    doubleval,
    stringval,
    any_type
  );

  type YYSType is record
     text    : String(1..80);
     length  : Natural := 0;
     vartype : const_type;
     intval  : Long_Long_Integer;
     floatval: Long_Float;
  end record;


    YYLVal, YYVal : YYSType; 
    type Token is
        (End_Of_Input, Error, Number, Float_T,
         Comma_T, Bar_T, Lbrace_T,
         Rbrace_T, Not_T, C_Include_T,
         Dialog_T, Dialogex_T, Control_T,
         Caption_T, Begin_T, End_T,
         Language_T, Style_T, Exstyle_T,
         Font_T, Class_T, Pure_T,
         Discardable_T, Moveable_T, Preload_T,
         Fixed_T, Dlginclude_T, Textinclude_T,
         Guidelines_T, Designinfo_T, Rt_Manifest_T,
         Menu_T, Popup_T, Menuitem_T,
         Separator_T, Grayed_T, Inactive_T,
         Checked_T, Help_T, Menubarbreak_T,
         Menubreak_T, Accelerators_T, Characteristics_T,
         Version_T, Ascii_T, Virtkey_T,
         Noinvert_T, Alt_T, Shift_T,
         Icon_T, Bitmap_T, Cursor_T,
         Versioninfo_T, Fileversion_T, Productversion_T,
         Fileflagsmask_T, Fileflags_T, Fileos_T,
         Filetype_T, Filesubtype_T, Block_T,
         Value_T, Toolbar_T, Button_T,
         Edittext_T, Ltext_T, Ctext_T,
         Rtext_T, Combobox_T, Groupbox_T,
         Listbox_T, Pushbutton_T, Defpushbutton_T,
         Radiobutton_T, Autoradiobutton_T, Checkbox_T,
         State3_T, Autocheckbox_T, Auto3state_T,
         Scrollbar_T, Animate_Class_T, Datetimepick_Class_T,
         Hotkey_Class_T, Link_Class_T, Monthcal_Class_T,
         Nativefntctl_Class_T, Progress_Class_T, Rebarclassname_T,
         Standard_Classes_T, Statusclassname_T, Toolbarclassname_T,
         Tooltips_Class_T, Trackbar_Class_T, Updown_Class_T,
         Wc_Button_T, Wc_Combobox_T, Wc_Comboboxex_T,
         Wc_Edit_T, Wc_Header_T, Wc_Listbox_T,
         Wc_Ipaddress_T, Wc_Link_T, Wc_Listview_T,
         Wc_Nativefontctl_T, Wc_Pagescroller_T, Wc_Scrollbar_T,
         Wc_Static_T, Wc_Tabcontrol_T, Wc_Treeview_T,
         Ws_Border_T, Ws_Caption_T, Ws_Visible_T,
         Ws_Dlgframe_T, Ws_Popup_T, Ws_Sysmenu_T,
         Ws_Hscroll_T, Ws_Vscroll_T, Ws_Tabstop_T,
         Ws_Group_T, Ws_Disabled_T, Ws_Minimizebox_T,
         Ws_Maximizebox_T, Ws_Thickframe_T, Ws_Child_T,
         Ws_Clipsiblings_T, Ws_Sizebox_T, Ds_3dlook_T,
         Ds_Center_T, Ds_Modalframe_T, Ds_Sysmodal_T,
         Ds_Shellfont_T, Ds_Setfont_T, Ds_Fixedsys_T,
         Ds_Noidlemsg_T, Ds_Centermouse_T, Ds_Localedit_T,
         Ds_Setforeground_T, Ds_Contexthelp_T, Ds_Control_T,
         Ss_Noprefix_T, Ss_Sunken_T, Ss_Blackframe_T,
         Ss_Centerimage_T, Ss_Bitmap_T, Ss_Icon_T,
         Ss_Simple_T, Ss_Leftnowordwrap_T, Ss_Endellipsis_T,
         Ss_Blackrect_T, Ss_Grayrect_T, Ss_Whiterect_T,
         Ss_Realsizeimage_T, Ss_Left_T, Ss_Right_T,
         Es_Multiline_T, Es_Readonly_T, Es_Autohscroll_T,
         Es_Autovscroll_T, Es_Wantreturn_T, Es_Number_T,
         Es_Center_T, Es_Right_T, Es_Password_T,
         Es_Uppercase_T, Es_Oemconvert_T, Bs_Lefttext_T,
         Bs_Autoradiobutton_T, Bs_3state_T, Bs_Autocheckbox_T,
         Bs_Bitmap_T, Bs_Ownerdraw_T, Bs_Bottom_T,
         Bs_Flat_T, Bs_Left_T, Bs_Right_T,
         Bs_Center_T, Bs_Vcenter_T, Bs_Pushlike_T,
         Bs_Top_T, Bs_Multiline_T, Bs_Defpushbutton_T,
         Bs_Pushbutton_T, Bs_Radiobutton_T, Cbs_Simple_T,
         Cbs_Dropdown_T, Cbs_Dropdownlist_T, Cbs_Sort_T,
         Cbs_Hasstrings_T, Cbs_Autohscroll_T, Cbs_Disablenoscroll_T,
         Cbs_Ownerdrawfixed_T, Lbs_Sort_T, Lbs_Multiplesel_T,
         Lbs_Multicolumn_T, Lbs_Nointegralheight_T, Lbs_Usetabstops_T,
         Lbs_Notify_T, Lbs_Extendedsel_T, Lbs_Disablenoscroll_T,
         Lbs_Nosel_T, Lbs_Ownerdrawfixed_T, Lbs_Hasstrings_T,
         Pbs_Vertical_T, Sbs_Vert_T, Tbs_Noticks_T,
         Tbs_Autoticks_T, Tbs_Vert_T, Tbs_Top_T,
         Tbs_Bottom_T, Tbs_Tooltips_T, Tbs_Both_T,
         Uds_Horz_T, Uds_Arrowkeys_T, Uds_Wrap_T,
         Uds_Nothousands_T, Lvs_Alignleft_T, Lvs_Icon_T,
         Lvs_Report_T, Lvs_Showselalways_T, Lvs_Sortascending_T,
         Lvs_Autoarrange_T, Lvs_Nosortheader_T, Tvs_Infotip_T,
         Tvs_Noscroll_T, Tvs_Haslines_T, Tvs_Showselalways_T,
         Tvs_Hasbuttons_T, Tvs_Linesatroot_T, Tvs_Notooltips_T,
         Dts_Rightalign_T, Mcs_Notoday_T, Tcs_Hottrack_T,
         Ws_Ex_Clientedge_T, Ws_Ex_Staticedge_T, Ws_Ex_Acceptfiles_T,
         Ws_Ex_Appwindow_T, Ws_Ex_Toolwindow_T, Ws_Ex_Controlparent_T,
         Ws_Ex_Noparentnotify_T, Ws_Ex_Contexthelp_T, Ws_Ex_Right_T,
         Ws_Ex_Transparent_T, Ws_Ex_Topmost_T, Idc_Static_T,
         Ident_T, Stringtable_T, Rcstring,
         Incstring, Consume_Eol_T );

    Syntax_Error : exception;

end Rc_Tokens;
