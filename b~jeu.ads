pragma Ada_95;
with System;
package ada_main is
   pragma Warnings (Off);

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: 4.6" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_jeu" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure Break_Start;
   pragma Import (C, Break_Start, "__gnat_break_start");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#995293cc#;
   pragma Export (C, u00001, "jeuB");
   u00002 : constant Version_32 := 16#ba46b2cd#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#1e2e640d#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#f64b89a4#;
   pragma Export (C, u00005, "ada__integer_text_ioB");
   u00006 : constant Version_32 := 16#f1daf268#;
   pragma Export (C, u00006, "ada__integer_text_ioS");
   u00007 : constant Version_32 := 16#9229643d#;
   pragma Export (C, u00007, "ada__exceptionsB");
   u00008 : constant Version_32 := 16#e3df9d67#;
   pragma Export (C, u00008, "ada__exceptionsS");
   u00009 : constant Version_32 := 16#95643e9a#;
   pragma Export (C, u00009, "ada__exceptions__last_chance_handlerB");
   u00010 : constant Version_32 := 16#03cf4fc2#;
   pragma Export (C, u00010, "ada__exceptions__last_chance_handlerS");
   u00011 : constant Version_32 := 16#23e1f70b#;
   pragma Export (C, u00011, "systemS");
   u00012 : constant Version_32 := 16#30ec78bc#;
   pragma Export (C, u00012, "system__soft_linksB");
   u00013 : constant Version_32 := 16#e2ebe502#;
   pragma Export (C, u00013, "system__soft_linksS");
   u00014 : constant Version_32 := 16#0d2b82ae#;
   pragma Export (C, u00014, "system__parametersB");
   u00015 : constant Version_32 := 16#bfbc74f1#;
   pragma Export (C, u00015, "system__parametersS");
   u00016 : constant Version_32 := 16#72905399#;
   pragma Export (C, u00016, "system__secondary_stackB");
   u00017 : constant Version_32 := 16#378fd0a5#;
   pragma Export (C, u00017, "system__secondary_stackS");
   u00018 : constant Version_32 := 16#ace32e1e#;
   pragma Export (C, u00018, "system__storage_elementsB");
   u00019 : constant Version_32 := 16#d92c8a93#;
   pragma Export (C, u00019, "system__storage_elementsS");
   u00020 : constant Version_32 := 16#4f750b3b#;
   pragma Export (C, u00020, "system__stack_checkingB");
   u00021 : constant Version_32 := 16#80434b27#;
   pragma Export (C, u00021, "system__stack_checkingS");
   u00022 : constant Version_32 := 16#a7343537#;
   pragma Export (C, u00022, "system__exception_tableB");
   u00023 : constant Version_32 := 16#8120f83b#;
   pragma Export (C, u00023, "system__exception_tableS");
   u00024 : constant Version_32 := 16#ff3fa16b#;
   pragma Export (C, u00024, "system__htableB");
   u00025 : constant Version_32 := 16#cc3e5bd4#;
   pragma Export (C, u00025, "system__htableS");
   u00026 : constant Version_32 := 16#8b7dad61#;
   pragma Export (C, u00026, "system__string_hashB");
   u00027 : constant Version_32 := 16#057d2f9f#;
   pragma Export (C, u00027, "system__string_hashS");
   u00028 : constant Version_32 := 16#6a8a6a74#;
   pragma Export (C, u00028, "system__exceptionsB");
   u00029 : constant Version_32 := 16#86f01d0a#;
   pragma Export (C, u00029, "system__exceptionsS");
   u00030 : constant Version_32 := 16#b012ff50#;
   pragma Export (C, u00030, "system__img_intB");
   u00031 : constant Version_32 := 16#213a17c9#;
   pragma Export (C, u00031, "system__img_intS");
   u00032 : constant Version_32 := 16#dc8e33ed#;
   pragma Export (C, u00032, "system__tracebackB");
   u00033 : constant Version_32 := 16#4266237e#;
   pragma Export (C, u00033, "system__tracebackS");
   u00034 : constant Version_32 := 16#4900ab7d#;
   pragma Export (C, u00034, "system__unsigned_typesS");
   u00035 : constant Version_32 := 16#907d882f#;
   pragma Export (C, u00035, "system__wch_conB");
   u00036 : constant Version_32 := 16#9c0ad936#;
   pragma Export (C, u00036, "system__wch_conS");
   u00037 : constant Version_32 := 16#22fed88a#;
   pragma Export (C, u00037, "system__wch_stwB");
   u00038 : constant Version_32 := 16#b11bf537#;
   pragma Export (C, u00038, "system__wch_stwS");
   u00039 : constant Version_32 := 16#5d4d477e#;
   pragma Export (C, u00039, "system__wch_cnvB");
   u00040 : constant Version_32 := 16#82f45fe0#;
   pragma Export (C, u00040, "system__wch_cnvS");
   u00041 : constant Version_32 := 16#f77d8799#;
   pragma Export (C, u00041, "interfacesS");
   u00042 : constant Version_32 := 16#75729fba#;
   pragma Export (C, u00042, "system__wch_jisB");
   u00043 : constant Version_32 := 16#d686c4f4#;
   pragma Export (C, u00043, "system__wch_jisS");
   u00044 : constant Version_32 := 16#ada34a87#;
   pragma Export (C, u00044, "system__traceback_entriesB");
   u00045 : constant Version_32 := 16#71c0194a#;
   pragma Export (C, u00045, "system__traceback_entriesS");
   u00046 : constant Version_32 := 16#07116dec#;
   pragma Export (C, u00046, "ada__tagsB");
   u00047 : constant Version_32 := 16#21b957c3#;
   pragma Export (C, u00047, "ada__tagsS");
   u00048 : constant Version_32 := 16#68f8d5f8#;
   pragma Export (C, u00048, "system__val_lluB");
   u00049 : constant Version_32 := 16#33f2fc0f#;
   pragma Export (C, u00049, "system__val_lluS");
   u00050 : constant Version_32 := 16#46a1f7a9#;
   pragma Export (C, u00050, "system__val_utilB");
   u00051 : constant Version_32 := 16#284c6214#;
   pragma Export (C, u00051, "system__val_utilS");
   u00052 : constant Version_32 := 16#b7fa72e7#;
   pragma Export (C, u00052, "system__case_utilB");
   u00053 : constant Version_32 := 16#8efd9783#;
   pragma Export (C, u00053, "system__case_utilS");
   u00054 : constant Version_32 := 16#7a8f4ce5#;
   pragma Export (C, u00054, "ada__text_ioB");
   u00055 : constant Version_32 := 16#78993766#;
   pragma Export (C, u00055, "ada__text_ioS");
   u00056 : constant Version_32 := 16#1358602f#;
   pragma Export (C, u00056, "ada__streamsS");
   u00057 : constant Version_32 := 16#7a48d8b1#;
   pragma Export (C, u00057, "interfaces__c_streamsB");
   u00058 : constant Version_32 := 16#40dd1af2#;
   pragma Export (C, u00058, "interfaces__c_streamsS");
   u00059 : constant Version_32 := 16#13cbc5a8#;
   pragma Export (C, u00059, "system__crtlS");
   u00060 : constant Version_32 := 16#5efa797c#;
   pragma Export (C, u00060, "system__file_ioB");
   u00061 : constant Version_32 := 16#2e96f0e6#;
   pragma Export (C, u00061, "system__file_ioS");
   u00062 : constant Version_32 := 16#7cc77cc0#;
   pragma Export (C, u00062, "ada__finalizationB");
   u00063 : constant Version_32 := 16#01acb175#;
   pragma Export (C, u00063, "ada__finalizationS");
   u00064 : constant Version_32 := 16#01cb6d81#;
   pragma Export (C, u00064, "system__finalization_rootB");
   u00065 : constant Version_32 := 16#2d16f6f3#;
   pragma Export (C, u00065, "system__finalization_rootS");
   u00066 : constant Version_32 := 16#dbb36d26#;
   pragma Export (C, u00066, "system__finalization_implementationB");
   u00067 : constant Version_32 := 16#bdfa5ab4#;
   pragma Export (C, u00067, "system__finalization_implementationS");
   u00068 : constant Version_32 := 16#386436bc#;
   pragma Export (C, u00068, "system__restrictionsB");
   u00069 : constant Version_32 := 16#db039e46#;
   pragma Export (C, u00069, "system__restrictionsS");
   u00070 : constant Version_32 := 16#a6e358bc#;
   pragma Export (C, u00070, "system__stream_attributesB");
   u00071 : constant Version_32 := 16#e89b4b3f#;
   pragma Export (C, u00071, "system__stream_attributesS");
   u00072 : constant Version_32 := 16#b46168d5#;
   pragma Export (C, u00072, "ada__io_exceptionsS");
   u00073 : constant Version_32 := 16#a2230cb9#;
   pragma Export (C, u00073, "interfaces__cB");
   u00074 : constant Version_32 := 16#ebbc3ca7#;
   pragma Export (C, u00074, "interfaces__cS");
   u00075 : constant Version_32 := 16#7401caa7#;
   pragma Export (C, u00075, "interfaces__c__stringsB");
   u00076 : constant Version_32 := 16#739e0600#;
   pragma Export (C, u00076, "interfaces__c__stringsS");
   u00077 : constant Version_32 := 16#621b06ef#;
   pragma Export (C, u00077, "system__crtl__runtimeS");
   u00078 : constant Version_32 := 16#f74220e8#;
   pragma Export (C, u00078, "system__os_libB");
   u00079 : constant Version_32 := 16#a6d80a38#;
   pragma Export (C, u00079, "system__os_libS");
   u00080 : constant Version_32 := 16#4cd8aca0#;
   pragma Export (C, u00080, "system__stringsB");
   u00081 : constant Version_32 := 16#940bbdcf#;
   pragma Export (C, u00081, "system__stringsS");
   u00082 : constant Version_32 := 16#fcde1931#;
   pragma Export (C, u00082, "system__file_control_blockS");
   u00083 : constant Version_32 := 16#b90c86f6#;
   pragma Export (C, u00083, "ada__finalization__list_controllerB");
   u00084 : constant Version_32 := 16#b97dfd74#;
   pragma Export (C, u00084, "ada__finalization__list_controllerS");
   u00085 : constant Version_32 := 16#f6fdca1c#;
   pragma Export (C, u00085, "ada__text_io__integer_auxB");
   u00086 : constant Version_32 := 16#b9793d30#;
   pragma Export (C, u00086, "ada__text_io__integer_auxS");
   u00087 : constant Version_32 := 16#515dc0e3#;
   pragma Export (C, u00087, "ada__text_io__generic_auxB");
   u00088 : constant Version_32 := 16#a6c327d3#;
   pragma Export (C, u00088, "ada__text_io__generic_auxS");
   u00089 : constant Version_32 := 16#ef6c8032#;
   pragma Export (C, u00089, "system__img_biuB");
   u00090 : constant Version_32 := 16#8f222330#;
   pragma Export (C, u00090, "system__img_biuS");
   u00091 : constant Version_32 := 16#10618bf9#;
   pragma Export (C, u00091, "system__img_llbB");
   u00092 : constant Version_32 := 16#cee533ce#;
   pragma Export (C, u00092, "system__img_llbS");
   u00093 : constant Version_32 := 16#9777733a#;
   pragma Export (C, u00093, "system__img_lliB");
   u00094 : constant Version_32 := 16#32aea2da#;
   pragma Export (C, u00094, "system__img_lliS");
   u00095 : constant Version_32 := 16#f931f062#;
   pragma Export (C, u00095, "system__img_llwB");
   u00096 : constant Version_32 := 16#67891058#;
   pragma Export (C, u00096, "system__img_llwS");
   u00097 : constant Version_32 := 16#b532ff4e#;
   pragma Export (C, u00097, "system__img_wiuB");
   u00098 : constant Version_32 := 16#e163a4a2#;
   pragma Export (C, u00098, "system__img_wiuS");
   u00099 : constant Version_32 := 16#7993dbbd#;
   pragma Export (C, u00099, "system__val_intB");
   u00100 : constant Version_32 := 16#6b44dd34#;
   pragma Export (C, u00100, "system__val_intS");
   u00101 : constant Version_32 := 16#e6965fe6#;
   pragma Export (C, u00101, "system__val_unsB");
   u00102 : constant Version_32 := 16#59a84646#;
   pragma Export (C, u00102, "system__val_unsS");
   u00103 : constant Version_32 := 16#936e9286#;
   pragma Export (C, u00103, "system__val_lliB");
   u00104 : constant Version_32 := 16#b9c511ab#;
   pragma Export (C, u00104, "system__val_lliS");
   u00105 : constant Version_32 := 16#1e91a3fa#;
   pragma Export (C, u00105, "typesS");
   u00106 : constant Version_32 := 16#0936cab5#;
   pragma Export (C, u00106, "system__memoryB");
   u00107 : constant Version_32 := 16#e96a4b1e#;
   pragma Export (C, u00107, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  interfaces%s
   --  system%s
   --  system.case_util%s
   --  system.case_util%b
   --  system.htable%s
   --  system.img_int%s
   --  system.img_int%b
   --  system.img_lli%s
   --  system.img_lli%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.standard_library%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  system.soft_links%s
   --  system.unsigned_types%s
   --  system.img_biu%s
   --  system.img_biu%b
   --  system.img_llb%s
   --  system.img_llb%b
   --  system.img_llw%s
   --  system.img_llw%b
   --  system.img_wiu%s
   --  system.img_wiu%b
   --  system.val_int%s
   --  system.val_lli%s
   --  system.val_llu%s
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
   --  system.val_llu%b
   --  system.val_lli%b
   --  system.val_int%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.tags%s
   --  ada.streams%s
   --  interfaces.c%s
   --  interfaces.c.strings%s
   --  system.crtl.runtime%s
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.secondary_stack%s
   --  interfaces.c.strings%b
   --  interfaces.c%b
   --  ada.tags%b
   --  system.soft_links%b
   --  system.secondary_stack%b
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  system.finalization_implementation%s
   --  system.finalization_implementation%b
   --  ada.finalization%s
   --  ada.finalization%b
   --  ada.finalization.list_controller%s
   --  ada.finalization.list_controller%b
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.os_lib%s
   --  system.os_lib%b
   --  system.file_io%b
   --  system.traceback%s
   --  ada.exceptions%b
   --  system.traceback%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  ada.text_io.integer_aux%s
   --  ada.text_io.integer_aux%b
   --  ada.integer_text_io%s
   --  ada.integer_text_io%b
   --  types%s
   --  jeu%b
   --  END ELABORATION ORDER

end ada_main;
