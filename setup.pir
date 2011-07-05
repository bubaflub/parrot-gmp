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
# Body
# {
.annotate 'file', 'setup.winxed'
.annotate 'line', 5
# var parrot_gmp: $P1
    root_new $P1, ['parrot';'Hash']
    box $P4, 'Parrot-GMP'
    $P1["name"] = $P4
    box $P5, 'Parrot bindings for the GNU Multi-Precision Library'
    $P1["abstract"] = $P5
    box $P6, 'Parrot bindings for the GNU Multi-Precision Library.  Currently has bindings for Integer type functions and random initialization functions.'
    $P1["description"] = $P6
    box $P7, 'http://github.com/bubaflub'
    $P1["authority"] = $P7
    box $P8, 'Bob Kuo'
    $P1["copyright_holder"] = $P8
.annotate 'line', 11
    root_new $P10, ['parrot';'ResizablePMCArray']
    box $P11, "parrot"
    push $P10, $P11
    box $P11, "gmp"
    push $P10, $P11
    $P1["keywords"] = $P10
    box $P12, 'Artistic License 2.0'
    $P1["license_type"] = $P12
    box $P13, 'http://www.perlfoundation.org/artistic_license_2_0'
    $P1["license_uri"] = $P13
    box $P14, 'git://github.com/bubaflub/parrot-gmp.git'
    $P1["checkout_uri"] = $P14
    box $P15, 'git://github.com/bubaflub/parrot-gmp'
    $P1["browser_uri"] = $P15
    box $P16, 'git://github.com/bubaflub/parrot-gmp'
    $P1["project_uri"] = $P16
.annotate 'line', 17
    root_new $P18, ['parrot';'Hash']
    $P1["pir_winxed"] = $P18
.annotate 'line', 18
    root_new $P20, ['parrot';'Hash']
    $P1["pbc_pir"] = $P20
.annotate 'line', 19
    root_new $P22, ['parrot';'ResizablePMCArray']
    $P1["inst_lib"] = $P22
.annotate 'line', 20
    root_new $P25, ['parrot';'Hash']
    $P1["installable_pbc"] = $P25
.annotate 'line', 21
    root_new $P27, ['parrot';'Hash']
    $P1["include_winxed"] = $P27
.annotate 'line', 22
    root_new $P29, ['parrot';'ResizablePMCArray']
    box $P30, "README.md"
    push $P29, $P30
    box $P30, "setup.winxed"
    push $P29, $P30
    $P1["manifest_includes"] = $P29
.annotate 'line', 25
    $P4 = __ARG_1[1]
    set $S1, $P4
    ne $S1, "test", __label_1
.annotate 'line', 26
    WSubId_1()
  __label_1: # endif
.annotate 'line', 28
    WSubId_2($P1)
# predefined load_bytecode
.annotate 'line', 30
    load_bytecode 'distutils.pir'
.annotate 'line', 31
    get_hll_global $P2, 'setup'
.annotate 'line', 32
    get_hll_global $P3, 'register_step_before'
.annotate 'line', 34
    $P3("build", WSubId_3)
.annotate 'line', 35
    $P3("clean", WSubId_4)
.annotate 'line', 37
    __ARG_1.'shift'()
.annotate 'line', 38
    $P2(__ARG_1, $P1)
# }
.annotate 'line', 39

.end # main


.sub 'setup_stable_libraries' :subid('WSubId_2')
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 42
    $P2 = __ARG_1["pbc_pir"]
    $P2["GMP/raw.pbc"] = "src/GMP/raw.pir"
.annotate 'line', 43
    $P2 = __ARG_1["inst_lib"]
    $P2.'push'("GMP/raw.pbc")
.annotate 'line', 45
# var libs: $P1
    root_new $P1, ['parrot';'ResizablePMCArray']
    box $P2, 'Common'
    push $P1, $P2
    box $P2, 'Random'
    push $P1, $P2
    box $P2, 'Integer'
    push $P1, $P2
.annotate 'line', 51
# prefix: $S1
    set $S1, "src/GMP/"
.annotate 'line', 53
    iter $P3, $P1
    set $P3, 0
  __label_1: # for iteration
    unless $P3 goto __label_2
    shift $S2, $P3
# {
.annotate 'line', 54
# winxed_file: $S3
    concat $S3, $S1, $S2
    concat $S3, $S3, ".winxed"
.annotate 'line', 55
# pir_file: $S4
    concat $S4, $S1, $S2
    concat $S4, $S4, ".pir"
.annotate 'line', 56
# pbc_file: $S5
    concat $S5, "GMP/", $S2
    concat $S5, $S5, ".pbc"
.annotate 'line', 57
    $P2 = __ARG_1["pir_winxed"]
    $P2[$S4] = $S3
.annotate 'line', 58
    $P2 = __ARG_1["pbc_pir"]
    $P2[$S5] = $S4
.annotate 'line', 59
    $P2 = __ARG_1["inst_lib"]
    $P2.'push'($S5)
# }
    goto __label_1
  __label_2: # endfor
# }
.annotate 'line', 62

.end # setup_stable_libraries


.sub 'do_test' :subid('WSubId_1')
# Body
# {
.annotate 'line', 65
# result: $I1
    null $I1
.annotate 'line', 66
# cmd: $S1
    set $S1, "parrot-nqp t/harness"
.annotate 'line', 67
# pirop spawnw
    spawnw $I1, $S1
.annotate 'line', 68
# pirop exit
    exit $I1
# }
.annotate 'line', 69

.end # do_test


.sub 'check_dependencies' :subid('WSubId_3')
# Body
# {
.annotate 'line', 72
# var config: $P1
# predefined getinterp
    getinterp $P5
    $P1 = $P5[8]
.annotate 'line', 74
# maj: $I1
    $I1 = $P1['MAJOR']
.annotate 'line', 75
# min: $I2
    $I2 = $P1['MINOR']
.annotate 'line', 76
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
.annotate 'line', 77
    die "You need at least Parrot 3.2.0 to use Parrot-GMP"
# }
  __label_1: # endif
.annotate 'line', 80
# has_libffi: $I3
    $I3 = $P1['has_libffi']
.annotate 'line', 81
    not $I9, $I3
    unless $I9 goto __label_4
# {
# predefined die
.annotate 'line', 82
    die "You need to have Parrot configured with libffi to use Parrot-GMP"
# }
  __label_4: # endif
.annotate 'line', 85
# has_gmp: $I4
    $I4 = $P1['HAS_GMP']
.annotate 'line', 86
    not $I9, $I4
    unless $I9 goto __label_5
# {
# predefined die
.annotate 'line', 87
    die "You need to have Parrot configured with GMP to use Parrot-GMP"
# }
  __label_5: # endif
.annotate 'line', 91
# file: $S1
    set $S1, "build/gmp_test.c"
.annotate 'line', 92
# exe: $S2
# predefined string
    $S5 = $P1['exe']
    concat $S2, "build/gmp_test", $S5
.annotate 'line', 93
# command: $S3
# predefined string
    $S5 = $P1['cc']
# predefined string
    $S6 = $P1['ccflags']
# predefined string
    $S7 = $P1['cc_exe_out']
    concat $S3, $S5, " "
    concat $S3, $S3, $S6
    concat $S3, $S3, " "
    concat $S3, $S3, $S7
    concat $S3, $S3, $S2
    concat $S3, $S3, " "
    concat $S3, $S3, $S1
.annotate 'line', 94
    'system'($S3)
.annotate 'line', 95
# var pipe: $P2
    new $P2, [ "FileHandle" ]
.annotate 'line', 96
    $P2.'encoding'('utf8')
.annotate 'line', 97
    $P2.'open'($S2, "rp")
.annotate 'line', 98
# output: $S4
    $P5 = $P2.'readall'()
    null $S4
    if_null $P5, __label_6
    set $S4, $P5
  __label_6:
.annotate 'line', 99
    $P2.'close'()
.annotate 'line', 100
# exit_status: $I5
    $P5 = $P2.'exit_status'()
    set $I5, $P5
.annotate 'line', 101
    eq $I5, 0, __label_7
# {
.annotate 'line', 102
    concat $S5, "Could not run ", $S2
    concat $S5, $S5, ": please check that your system has libgmp"
# predefined die
    die $S5
# }
  __label_7: # endif
.annotate 'line', 104
# var lines: $P3
# predefined split
    split $P3, "\n", $S4
.annotate 'line', 105
# var values: $P4
    $P5 = $P3[0]
    set $S5, $P5
# predefined split
    split $P4, ' ', $S5
.annotate 'line', 106
# gmp_major: $I6
    $I6 = $P4[0]
.annotate 'line', 107
# gmp_minor: $I7
    $I7 = $P4[1]
.annotate 'line', 108
# gmp_patch: $I8
    $I8 = $P4[2]
.annotate 'line', 109
    islt $I9, $I6, 4
    if $I9 goto __label_9
    iseq $I9, $I6, 4
    unless $I9 goto __label_10
    islt $I9, $I7, 2
  __label_10:
  __label_9:
    unless $I9 goto __label_8
# {
# predefined die
.annotate 'line', 110
    die "Need GMP version >= 4.2"
# }
  __label_8: # endif
# }
.annotate 'line', 113

.end # check_dependencies


.sub 'clean_build_dir' :subid('WSubId_4')
# Body
# {
.annotate 'line', 116
# var config: $P1
# predefined getinterp
    getinterp $P2
    $P1 = $P2[8]
.annotate 'line', 117
# exe: $S1
# predefined string
    $S2 = $P1['exe']
    concat $S1, "build/gmp_test", $S2
.annotate 'line', 118
# e: $I1
    null $I1
.annotate 'line', 119
# pirop stat
    stat $I1, $S1, 0
.annotate 'line', 120
    unless $I1 goto __label_1
# {
.annotate 'line', 121
    concat $S2, "unlink ", $S1
# predefined say
    say $S2
.annotate 'line', 122
    'unlink'($S1)
# }
  __label_1: # endif
# }
.annotate 'line', 124

.end # clean_build_dir

# End generated code
