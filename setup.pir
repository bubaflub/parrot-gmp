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
    box $P6, 'http://github.com/bubaflub'
    $P1["authority"] = $P6
    box $P7, 'Bob Kuo'
    $P1["copyright_holder"] = $P7
.annotate 'line', 10
    root_new $P9, ['parrot';'ResizablePMCArray']
    box $P10, "parrot"
    push $P9, $P10
    box $P10, "gmp"
    push $P9, $P10
    $P1["keywords"] = $P9
    box $P11, 'Artistic License 2.0'
    $P1["license_type"] = $P11
    box $P12, 'http://www.perlfoundation.org/artistic_license_2_0'
    $P1["license_uri"] = $P12
    box $P13, 'git://github.com/bubaflub/parrot-gmp.git'
    $P1["checkout_uri"] = $P13
    box $P14, 'git://github.com/bubaflub/parrot-gmp'
    $P1["browser_uri"] = $P14
    box $P15, 'git://github.com/bubaflub/parrot-gmp'
    $P1["project_uri"] = $P15
.annotate 'line', 16
    root_new $P17, ['parrot';'Hash']
    $P1["pir_winxed"] = $P17
.annotate 'line', 17
    root_new $P19, ['parrot';'Hash']
    $P1["pbc_pir"] = $P19
.annotate 'line', 18
    root_new $P21, ['parrot';'ResizablePMCArray']
    $P1["inst_lib"] = $P21
.annotate 'line', 19
    root_new $P24, ['parrot';'Hash']
    $P1["installable_pbc"] = $P24
.annotate 'line', 20
    root_new $P26, ['parrot';'Hash']
    $P1["include_winxed"] = $P26
.annotate 'line', 21
    root_new $P28, ['parrot';'ResizablePMCArray']
    box $P29, "README.md"
    push $P28, $P29
    box $P29, "setup.winxed"
    push $P28, $P29
    $P1["manifest_includes"] = $P28
.annotate 'line', 24
    $P4 = __ARG_1[1]
    set $S1, $P4
    ne $S1, "test", __label_1
.annotate 'line', 25
    WSubId_1()
  __label_1: # endif
.annotate 'line', 27
    WSubId_2($P1)
# predefined load_bytecode
.annotate 'line', 29
    load_bytecode 'distutils.pir'
.annotate 'line', 30
    get_hll_global $P2, 'setup'
.annotate 'line', 31
    get_hll_global $P3, 'register_step_before'
.annotate 'line', 33
    $P3("build", WSubId_3)
.annotate 'line', 34
    $P3("clean", WSubId_4)
.annotate 'line', 36
    __ARG_1.'shift'()
.annotate 'line', 37
    $P2(__ARG_1, $P1)
# }
.annotate 'line', 38

.end # main


.sub 'setup_stable_libraries' :subid('WSubId_2')
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 41
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
.annotate 'line', 48
# prefix: $S1
    set $S1, "src/GMP/"
.annotate 'line', 50
    iter $P3, $P1
    set $P3, 0
  __label_1: # for iteration
    unless $P3 goto __label_2
    shift $S2, $P3
# {
.annotate 'line', 51
# winxed_file: $S3
    concat $S3, $S1, $S2
    concat $S3, $S3, ".winxed"
.annotate 'line', 52
# pir_file: $S4
    concat $S4, $S1, $S2
    concat $S4, $S4, ".pir"
.annotate 'line', 53
# pbc_file: $S5
    concat $S5, $S1, $S2
    concat $S5, $S5, ".pbc"
.annotate 'line', 54
    $P2 = __ARG_1["pir_winxed"]
    $P2[$S4] = $S3
.annotate 'line', 55
    $P2 = __ARG_1["pbc_pir"]
    $P2[$S5] = $S4
# }
    goto __label_1
  __label_2: # endfor
# }
.annotate 'line', 57

.end # setup_stable_libraries


.sub 'do_test' :subid('WSubId_1')
# Body
# {
.annotate 'line', 60
# result: $I1
    null $I1
.annotate 'line', 61
# cmd: $S1
    set $S1, "parrot-nqp t/harness"
.annotate 'line', 62
# pirop spawnw
    spawnw $I1, $S1
.annotate 'line', 63
# pirop exit
    exit $I1
# }
.annotate 'line', 64

.end # do_test


.sub 'check_dependencies' :subid('WSubId_3')
# Body
# {
.annotate 'line', 67
# var config: $P1
# predefined getinterp
    getinterp $P2
    $P1 = $P2[8]
.annotate 'line', 69
# maj: $I1
    $I1 = $P1['MAJOR']
.annotate 'line', 70
# min: $I2
    $I2 = $P1['MINOR']
.annotate 'line', 71
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
.annotate 'line', 72
    die "You need at least Parrot 3.2.0 to use Parrot-GMP"
# }
  __label_1: # endif
.annotate 'line', 75
# has_libffi: $I3
    $I3 = $P1['has_libffi']
.annotate 'line', 76
    not $I6, $I3
    unless $I6 goto __label_4
# {
# predefined die
.annotate 'line', 77
    die "You need to have Parrot configured with libffi to use Parrot-GMP"
# }
  __label_4: # endif
.annotate 'line', 80
# has_gmp: $I4
    $I4 = $P1['HAS_GMP']
.annotate 'line', 81
    not $I6, $I4
    unless $I6 goto __label_5
# {
# predefined die
.annotate 'line', 82
    die "You need to have Parrot configured with GMP to use Parrot-GMP"
# }
  __label_5: # endif
.annotate 'line', 86
# file: $S1
    set $S1, "build/gmp_test.c"
.annotate 'line', 87
# exe: $S2
# predefined string
    $S4 = $P1['exe']
    concat $S2, "build/gmp_test", $S4
.annotate 'line', 88
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
.annotate 'line', 89
    'system'($S3)
.annotate 'line', 90
# result: $I5
    null $I5
# }
.annotate 'line', 93

.end # check_dependencies


.sub 'clean_build_dir' :subid('WSubId_4')
# Body
# {
.annotate 'line', 96
# var config: $P1
# predefined getinterp
    getinterp $P2
    $P1 = $P2[8]
.annotate 'line', 97
# exe: $S1
# predefined string
    $S2 = $P1['exe']
    concat $S1, "build/gmp_test", $S2
.annotate 'line', 98
# e: $I1
    null $I1
.annotate 'line', 99
# pirop stat
    stat $I1, $S1, 0
.annotate 'line', 100
    unless $I1 goto __label_1
# {
.annotate 'line', 101
    concat $S2, "unlink ", $S1
# predefined say
    say $S2
.annotate 'line', 102
    'unlink'($S1)
# }
  __label_1: # endif
# }
.annotate 'line', 104

.end # clean_build_dir

# End generated code
