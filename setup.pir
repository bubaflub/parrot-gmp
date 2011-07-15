# THIS IS A GENERATED FILE! DO NOT EDIT!
# Begin generated code

.loadlib "io_ops"
# end libs
.namespace [ ]

.sub 'main' :main
        .param pmc __ARG_1
.const 'Sub' WSubId_1 = "WSubId_1"
.const 'Sub' WSubId_2 = "WSubId_2"
.const 'Sub' WSubId_3 = "WSubId_3"
.const 'Sub' WSubId_4 = "WSubId_4"
.const 'Sub' WSubId_5 = "WSubId_5"
# Body
# {
.annotate 'file', 'setup.winxed'
.annotate 'line', 5
# var parrot_gmp: $P1
    root_new $P1, ['parrot';'Hash']
    box $P5, 'Parrot-GMP'
    $P1["name"] = $P5
    box $P6, 'Parrot bindings for the GNU Multi-Precision Library'
    $P1["abstract"] = $P6
    box $P7, 'Parrot bindings for the GNU Multi-Precision Library.  Currently has bindings for Integer type functions and random initialization functions.'
    $P1["description"] = $P7
    box $P8, 'http://github.com/bubaflub'
    $P1["authority"] = $P8
    box $P9, 'Bob Kuo'
    $P1["copyright_holder"] = $P9
.annotate 'line', 11
    root_new $P11, ['parrot';'ResizablePMCArray']
    box $P12, "parrot"
    push $P11, $P12
    box $P12, "gmp"
    push $P11, $P12
    $P1["keywords"] = $P11
    box $P13, 'Artistic License 2.0'
    $P1["license_type"] = $P13
    box $P14, 'http://www.perlfoundation.org/artistic_license_2_0'
    $P1["license_uri"] = $P14
    box $P15, 'git://github.com/bubaflub/parrot-gmp.git'
    $P1["checkout_uri"] = $P15
    box $P16, 'git://github.com/bubaflub/parrot-gmp'
    $P1["browser_uri"] = $P16
    box $P17, 'git://github.com/bubaflub/parrot-gmp'
    $P1["project_uri"] = $P17
.annotate 'line', 17
    root_new $P19, ['parrot';'Hash']
    $P1["pir_winxed"] = $P19
.annotate 'line', 18
    root_new $P21, ['parrot';'Hash']
    $P1["pbc_pir"] = $P21
.annotate 'line', 19
    root_new $P23, ['parrot';'ResizablePMCArray']
    $P1["inst_lib"] = $P23
.annotate 'line', 20
    root_new $P26, ['parrot';'Hash']
    $P1["installable_pbc"] = $P26
.annotate 'line', 21
    root_new $P28, ['parrot';'Hash']
    $P1["include_winxed"] = $P28
.annotate 'line', 22
    root_new $P30, ['parrot';'ResizablePMCArray']
    box $P31, "README.md"
    push $P30, $P31
    box $P31, "setup.winxed"
    push $P30, $P31
    $P1["manifest_includes"] = $P30
.annotate 'line', 24
# var config: $P2
# predefined getinterp
    getinterp $P5
    $P2 = $P5[8]
.annotate 'line', 25
# pirop set_global
    set_global 'config', $P2
.annotate 'line', 27
    $P5 = __ARG_1[1]
    set $S1, $P5
    ne $S1, "test", __label_1
.annotate 'line', 28
    WSubId_1()
  __label_1: # endif
.annotate 'line', 30
    WSubId_2($P1)
# predefined load_bytecode
.annotate 'line', 32
    load_bytecode 'distutils.pir'
.annotate 'line', 33
    get_hll_global $P3, 'setup'
.annotate 'line', 34
    get_hll_global $P4, 'register_step_before'
.annotate 'line', 36
    $P4("build", WSubId_3)
.annotate 'line', 37
    $P4("build", WSubId_4)
.annotate 'line', 38
    $P4("clean", WSubId_5)
.annotate 'line', 40
    __ARG_1.'shift'()
.annotate 'line', 41
    $P3(__ARG_1, $P1)
# }
.annotate 'line', 42

.end # main


.sub 'setup_stable_libraries' :subid('WSubId_2')
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 45
    $P2 = __ARG_1["pbc_pir"]
    $P2["GMP/raw.pbc"] = "src/GMP/raw.pir"
.annotate 'line', 46
    $P2 = __ARG_1["inst_lib"]
    $P2.'push'("GMP/raw.pbc")
.annotate 'line', 48
# var libs: $P1
    root_new $P1, ['parrot';'ResizablePMCArray']
    box $P2, 'Common'
    push $P1, $P2
    box $P2, 'Random'
    push $P1, $P2
    box $P2, 'Integer'
    push $P1, $P2
.annotate 'line', 54
# prefix: $S1
    set $S1, "src/GMP/"
.annotate 'line', 56
    if_null $P1, __label_2
    iter $P3, $P1
    set $P3, 0
  __label_1: # for iteration
    unless $P3 goto __label_2
    shift $S2, $P3
# {
.annotate 'line', 57
# winxed_file: $S3
    concat $S3, $S1, $S2
    concat $S3, $S3, ".winxed"
.annotate 'line', 58
# pir_file: $S4
    concat $S4, $S1, $S2
    concat $S4, $S4, ".pir"
.annotate 'line', 59
# pbc_file: $S5
    concat $S5, "GMP/", $S2
    concat $S5, $S5, ".pbc"
.annotate 'line', 60
    $P2 = __ARG_1["pir_winxed"]
    $P2[$S4] = $S3
.annotate 'line', 61
    $P2 = __ARG_1["pbc_pir"]
    $P2[$S5] = $S4
.annotate 'line', 62
    $P2 = __ARG_1["inst_lib"]
    $P2.'push'($S5)
# }
    goto __label_1
  __label_2: # endfor
# }
.annotate 'line', 65

.end # setup_stable_libraries


.sub 'do_test' :subid('WSubId_1')
.const 'Sub' WSubId_6 = "WSubId_6"
# Body
# {
.annotate 'line', 68
# result: $I1
    null $I1
.annotate 'line', 69
# command: $S1
    root_new $P2, ['parrot';'ResizablePMCArray']
    box $P3, "parrot-nqp"
    push $P2, $P3
    box $P3, "t/harness"
    push $P2, $P3
    $P1 = WSubId_6($P2)
    null $S1
    if_null $P1, __label_1
    set $S1, $P1
  __label_1:
.annotate 'line', 73
# pirop spawnw
    spawnw $I1, $S1
.annotate 'line', 74
# pirop exit
    exit $I1
# }
.annotate 'line', 75

.end # do_test


.sub 'check_dependencies' :subid('WSubId_3')
.const 'Sub' WSubId_7 = "WSubId_7"
.const 'Sub' WSubId_6 = "WSubId_6"
# Body
# {
.annotate 'line', 79
# maj: $I1
    $P4 = WSubId_7('MAJOR')
    set $I1, $P4
.annotate 'line', 80
# min: $I2
    $P4 = WSubId_7('MINOR')
    set $I2, $P4
.annotate 'line', 81
    islt $I9, $I1, 3
    if $I9 goto __label_2
    iseq $I9, $I1, 3
    unless $I9 goto __label_3
    islt $I9, $I2, 2
  __label_3:
  __label_2:
    unless $I9 goto __label_1
# {
# predefined die
.annotate 'line', 82
    die "You need at least Parrot 3.2.0 to use Parrot-GMP"
# }
  __label_1: # endif
.annotate 'line', 85
# has_libffi: $I3
    $P4 = WSubId_7('has_libffi')
    set $I3, $P4
.annotate 'line', 86
    not $I9, $I3
    unless $I9 goto __label_4
# {
# predefined die
.annotate 'line', 87
    die "You need to have Parrot configured with libffi to use Parrot-GMP"
# }
  __label_4: # endif
.annotate 'line', 90
# has_gmp: $I4
    $P4 = WSubId_7('HAS_GMP')
    set $I4, $P4
.annotate 'line', 91
    not $I9, $I4
    unless $I9 goto __label_5
# {
# predefined die
.annotate 'line', 92
    die "You need to have Parrot configured with GMP to use Parrot-GMP"
# }
  __label_5: # endif
.annotate 'line', 96
# file: $S1
    set $S1, "build/gmp_test.c"
.annotate 'line', 97
# exe: $S2
# predefined string
    $P4 = WSubId_7('exe')
    set $S5, $P4
    concat $S2, "build/gmp_test", $S5
.annotate 'line', 98
# command: $S3
    root_new $P5, ['parrot';'ResizablePMCArray']
.annotate 'line', 99
    $P7 = WSubId_7('cc')
.annotate 'line', 98
    push $P5, $P7
.annotate 'line', 100
    $P8 = WSubId_7('ccflags')
.annotate 'line', 98
    push $P5, $P8
.annotate 'line', 101
    $P9 = WSubId_7('cc_exe_out')
.annotate 'line', 98
    push $P5, $P9
.annotate 'line', 102
    box $P6, $S2
.annotate 'line', 98
    push $P5, $P6
.annotate 'line', 103
    box $P6, $S1
.annotate 'line', 98
    push $P5, $P6
    $P4 = WSubId_6($P5)
    null $S3
    if_null $P4, __label_6
    set $S3, $P4
  __label_6:
.annotate 'line', 105
# predefined say
    say $S3
.annotate 'line', 106
    'system'($S3)
.annotate 'line', 107
# var pipe: $P1
    new $P1, [ "FileHandle" ]
.annotate 'line', 108
    $P1.'encoding'('utf8')
.annotate 'line', 109
    $P1.'open'($S2, "rp")
.annotate 'line', 110
# output: $S4
    $P4 = $P1.'readall'()
    null $S4
    if_null $P4, __label_7
    set $S4, $P4
  __label_7:
.annotate 'line', 111
    $P1.'close'()
.annotate 'line', 112
# exit_status: $I5
    $P4 = $P1.'exit_status'()
    set $I5, $P4
.annotate 'line', 113
    eq $I5, 0, __label_8
# {
.annotate 'line', 114
    concat $S5, "Could not run ", $S2
    concat $S5, $S5, ": please check that your system has libgmp"
# predefined die
    die $S5
# }
  __label_8: # endif
.annotate 'line', 116
# var lines: $P2
# predefined split
    split $P2, "\n", $S4
.annotate 'line', 117
# var values: $P3
    $P4 = $P2[0]
    set $S5, $P4
# predefined split
    split $P3, ' ', $S5
.annotate 'line', 118
# gmp_major: $I6
    $I6 = $P3[0]
.annotate 'line', 119
# gmp_minor: $I7
    $I7 = $P3[1]
.annotate 'line', 120
# gmp_patch: $I8
    $I8 = $P3[2]
.annotate 'line', 121
    islt $I9, $I6, 4
    if $I9 goto __label_10
    iseq $I9, $I6, 4
    unless $I9 goto __label_11
    islt $I9, $I7, 2
  __label_11:
  __label_10:
    unless $I9 goto __label_9
# {
# predefined die
.annotate 'line', 122
    die "Need GMP version >= 4.2"
# }
  __label_9: # endif
# }
.annotate 'line', 125

.end # check_dependencies


.sub 'clean_build_dir' :subid('WSubId_5')
.const 'Sub' WSubId_7 = "WSubId_7"
.const 'Sub' WSubId_8 = "WSubId_8"
# Body
# {
.annotate 'line', 128
# var config: $P1
# predefined getinterp
    getinterp $P2
    $P1 = $P2[8]
.annotate 'line', 129
# exe: $S1
# predefined string
    $P2 = WSubId_7('exe')
    set $S2, $P2
    concat $S1, "build/gmp_test", $S2
.annotate 'line', 130
    WSubId_8($S1)
.annotate 'line', 131
    WSubId_8("src/GMP/thunks.c")
.annotate 'line', 132
    WSubId_8("src/GMP/thunks.o")
# }
.annotate 'line', 133

.end # clean_build_dir


.sub '_unlink_file' :subid('WSubId_8')
        .param string __ARG_1
# Body
# {
.annotate 'line', 136
# e: $I1
    null $I1
.annotate 'line', 137
# pirop stat
    stat $I1, __ARG_1, 0
.annotate 'line', 138
    unless $I1 goto __label_1
# {
.annotate 'line', 139
    concat $S1, "unlink ", __ARG_1
# predefined say
    say $S1
.annotate 'line', 140
    'unlink'(__ARG_1)
# }
  __label_1: # endif
# }
.annotate 'line', 142

.end # _unlink_file


.sub 'build_nci_thunks' :subid('WSubId_4')
.const 'Sub' WSubId_6 = "WSubId_6"
.const 'Sub' WSubId_7 = "WSubId_7"
# Body
# {
.annotate 'line', 145
# thunk: $S1
    set $S1, "src/GMP/thunks.c"
.annotate 'line', 146
# result: $I1
    null $I1
.annotate 'line', 147
# command: $S2
    root_new $P2, ['parrot';'ResizablePMCArray']
    box $P3, "parrot_nci_thunk_gen"
    push $P2, $P3
    box $P3, "--dynext"
    push $P2, $P3
    box $P3, "--no-warn-dups"
    push $P2, $P3
    box $P3, "--output=src/GMP/thunks.c"
    push $P2, $P3
    box $P3, "<src/GMP/thunks.nci"
    push $P2, $P3
    $P1 = WSubId_6($P2)
    null $S2
    if_null $P1, __label_1
    set $S2, $P1
  __label_1:
.annotate 'line', 154
# predefined say
    say $S2
.annotate 'line', 155
# pirop spawnw
    spawnw $I1, $S2
.annotate 'line', 157
# file: $S3
    set $S3, "src/GMP/thunks.c"
.annotate 'line', 158
# obj: $S4
# predefined string
    $P1 = WSubId_7('o')
    set $S6, $P1
    concat $S4, "GMP/thunks", $S6
.annotate 'line', 159
    root_new $P2, ['parrot';'ResizablePMCArray']
.annotate 'line', 160
    $P4 = WSubId_7('cc')
.annotate 'line', 159
    push $P2, $P4
.annotate 'line', 161
    $P5 = WSubId_7('ccflags')
.annotate 'line', 159
    push $P2, $P5
.annotate 'line', 162
    $P6 = WSubId_7('embed-cflags')
.annotate 'line', 159
    push $P2, $P6
.annotate 'line', 163
    $P7 = WSubId_7('libparrot_linkflags')
.annotate 'line', 159
    push $P2, $P7
    box $P3, "-Ipmc/pmc_nci.h"
    push $P2, $P3
.annotate 'line', 165
    $P8 = WSubId_7('cc_o_out')
.annotate 'line', 159
    push $P2, $P8
.annotate 'line', 166
    box $P3, $S4
.annotate 'line', 159
    push $P2, $P3
    box $P3, "-c"
    push $P2, $P3
.annotate 'line', 168
    box $P3, $S3
.annotate 'line', 159
    push $P2, $P3
    $P1 = WSubId_6($P2)
    set $S2, $P1
.annotate 'line', 170
# predefined say
    say $S2
.annotate 'line', 171
# pirop spawnw
    spawnw $I1, $S2
.annotate 'line', 172
# shared_obj: $S5
# predefined string
    $P1 = WSubId_7('load_ext')
    set $S6, $P1
    concat $S5, "GMP/thunks", $S6
.annotate 'line', 173
    root_new $P2, ['parrot';'ResizablePMCArray']
.annotate 'line', 174
    $P4 = WSubId_7('ld')
.annotate 'line', 173
    push $P2, $P4
.annotate 'line', 175
    $P5 = WSubId_7('ld_out')
.annotate 'line', 173
    push $P2, $P5
.annotate 'line', 176
    box $P3, $S5
.annotate 'line', 173
    push $P2, $P3
.annotate 'line', 177
    box $P3, $S4
.annotate 'line', 173
    push $P2, $P3
.annotate 'line', 178
    $P6 = WSubId_7('ldflags')
.annotate 'line', 173
    push $P2, $P6
.annotate 'line', 179
    $P7 = WSubId_7('ld_debug')
.annotate 'line', 173
    push $P2, $P7
.annotate 'line', 180
    $P8 = WSubId_7('rpath_blib')
.annotate 'line', 173
    push $P2, $P8
.annotate 'line', 181
    $P9 = WSubId_7('linkflags')
.annotate 'line', 173
    push $P2, $P9
.annotate 'line', 182
    $P10 = WSubId_7('ld_load_flags')
.annotate 'line', 173
    push $P2, $P10
    $P1 = WSubId_6($P2)
    set $S2, $P1
.annotate 'line', 184
# predefined string
    $P1 = WSubId_7('parrot_is_shared')
    set $S6, $P1
    if_null $S6, __label_2
    unless $S6 goto __label_2
# {
.annotate 'line', 185
# predefined string
    $P2 = WSubId_7('inst_libparrot_ldflags')
    set $S7, $P2
    concat $S2, $S2, " "
    concat $S2, $S2, $S7
# }
  __label_2: # endif
.annotate 'line', 187
# predefined say
    say $S2
.annotate 'line', 188
# pirop spawnw
    spawnw $I1, $S2
# }
.annotate 'line', 189

.end # build_nci_thunks


.sub '_config' :subid('WSubId_7')
        .param string __ARG_1
# Body
# {
.annotate 'line', 192
# var config: $P1
    null $P1
.annotate 'line', 193
# pirop get_global
    get_global $P1, 'config'
# predefined string
.annotate 'line', 194
    $S1 = $P1[__ARG_1]
    .return($S1)
# }
.annotate 'line', 195

.end # _config


.sub '_build_command' :subid('WSubId_6')
        .param pmc __ARG_1
# Body
# {
# predefined string
.annotate 'line', 198
# predefined join
    join $S1, ' ', __ARG_1
    .return($S1)
# }
.annotate 'line', 199

.end # _build_command

# End generated code
