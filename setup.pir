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
# var libs: $P1
    root_new $P1, ['parrot';'ResizablePMCArray']
    box $P2, 'raw'
    push $P1, $P2
    box $P2, 'Common'
    push $P1, $P2
    box $P2, 'Random'
    push $P1, $P2
    box $P2, 'Integer'
    push $P1, $P2
.annotate 'line', 49
# prefix: $S1
    set $S1, "src/GMP/"
.annotate 'line', 51
    iter $P3, $P1
    set $P3, 0
  __label_1: # for iteration
    unless $P3 goto __label_2
    shift $S2, $P3
# {
.annotate 'line', 52
# winxed_file: $S3
    concat $S3, $S1, $S2
    concat $S3, $S3, ".winxed"
.annotate 'line', 53
# pir_file: $S4
    concat $S4, $S1, $S2
    concat $S4, $S4, ".pir"
.annotate 'line', 54
# pbc_file: $S5
    concat $S5, $S1, $S2
    concat $S5, $S5, ".pbc"
.annotate 'line', 55
    $P2 = __ARG_1["pir_winxed"]
    $P2[$S4] = $S3
.annotate 'line', 56
    $P2 = __ARG_1["pbc_pir"]
    $P2[$S5] = $S4
.annotate 'line', 57
    $P2 = __ARG_1["inst_lib"]
    $P2.'push'($S5)
# }
    goto __label_1
  __label_2: # endfor
# }
.annotate 'line', 59

.end # setup_stable_libraries


.sub 'do_test' :subid('WSubId_1')
# Body
# {
.annotate 'line', 62
# result: $I1
    null $I1
.annotate 'line', 63
# cmd: $S1
    set $S1, "parrot-nqp t/harness"
.annotate 'line', 64
# pirop spawnw
    spawnw $I1, $S1
.annotate 'line', 65
# pirop exit
    exit $I1
# }
.annotate 'line', 66

.end # do_test


.sub 'check_dependencies' :subid('WSubId_3')
# Body
# {
.annotate 'line', 69
# var config: $P1
# predefined getinterp
    getinterp $P2
    $P1 = $P2[8]
.annotate 'line', 71
# maj: $I1
    $I1 = $P1['MAJOR']
.annotate 'line', 72
# min: $I2
    $I2 = $P1['MINOR']
.annotate 'line', 73
    islt $I6, $I1, 3
    if $I6 goto __label_2
    iseq $I6, $I1, 3
    unless $I6 goto __label_3
    islt $I6, $I2, 2
  __label_3:
  __label_2:
    unless $I6 goto __label_1
# {
# predefined die
.annotate 'line', 74
    die "You need at least Parrot 3.2.0 to use Parrot-GMP"
# }
  __label_1: # endif
.annotate 'line', 77
# has_libffi: $I3
    $I3 = $P1['has_libffi']
.annotate 'line', 78
    not $I6, $I3
    unless $I6 goto __label_4
# {
# predefined die
.annotate 'line', 79
    die "You need to have Parrot configured with libffi to use Parrot-GMP"
# }
  __label_4: # endif
.annotate 'line', 82
# has_gmp: $I4
    $I4 = $P1['HAS_GMP']
.annotate 'line', 83
    not $I6, $I4
    unless $I6 goto __label_5
# {
# predefined die
.annotate 'line', 84
    die "You need to have Parrot configured with GMP to use Parrot-GMP"
# }
  __label_5: # endif
.annotate 'line', 88
# file: $S1
    set $S1, "build/gmp_test.c"
.annotate 'line', 89
# exe: $S2
# predefined string
    $S4 = $P1['exe']
    concat $S2, "build/gmp_test", $S4
.annotate 'line', 90
# command: $S3
# predefined string
    $S4 = $P1['cc']
# predefined string
    $S5 = $P1['ccflags']
# predefined string
    $S6 = $P1['cc_exe_out']
    concat $S3, $S4, " "
    concat $S3, $S3, $S5
    concat $S3, $S3, " "
    concat $S3, $S3, $S6
    concat $S3, $S3, $S2
    concat $S3, $S3, " "
    concat $S3, $S3, $S1
.annotate 'line', 91
    'system'($S3)
.annotate 'line', 92
# result: $I5
    null $I5
# }
.annotate 'line', 95

.end # check_dependencies


.sub 'clean_build_dir' :subid('WSubId_4')
# Body
# {
.annotate 'line', 98
# var config: $P1
# predefined getinterp
    getinterp $P2
    $P1 = $P2[8]
.annotate 'line', 99
# exe: $S1
# predefined string
    $S2 = $P1['exe']
    concat $S1, "build/gmp_test", $S2
.annotate 'line', 100
# e: $I1
    null $I1
.annotate 'line', 101
# pirop stat
    stat $I1, $S1, 0
.annotate 'line', 102
    unless $I1 goto __label_1
# {
.annotate 'line', 103
    concat $S2, "unlink ", $S1
# predefined say
    say $S2
.annotate 'line', 104
    'unlink'($S1)
# }
  __label_1: # endif
# }
.annotate 'line', 106

.end # clean_build_dir

# End generated code
