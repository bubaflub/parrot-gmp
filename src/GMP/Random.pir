# THIS IS A GENERATED FILE! DO NOT EDIT!
# Begin generated code

.namespace [ ]

.sub 'load' :anon :load
# Body
# {
# predefined load_bytecode
.annotate 'file', 'src/GMP/Random.winxed'
.annotate 'line', 2
    load_bytecode 'GMP/raw.pbc'
# predefined load_bytecode
.annotate 'line', 3
    load_bytecode 'GMP/Common.pbc'
# }
.annotate 'line', 4

.end # load

.namespace [ ]

.sub 'gmp_randinit_default'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 19
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmp_randinit_default'
.annotate 'line', 21
    $P1(__ARG_1)
# }
.annotate 'line', 22

.end # gmp_randinit_default


.sub 'gmp_randinit_mt'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 33
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmp_randinit_mt'
.annotate 'line', 35
    $P1(__ARG_1)
# }
.annotate 'line', 36

.end # gmp_randinit_mt


.sub 'gmp_randinit_lc_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 47
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 48
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in gmp_randinit_lc_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 49
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmp_randinit_lc_2exp'
.annotate 'line', 51
    getattribute $P2, __ARG_2, 'ptr'
    $P1(__ARG_1, $P2, __ARG_3, __ARG_4)
# }
.annotate 'line', 52

.end # gmp_randinit_lc_2exp


.sub 'gmp_randinit_lc_2exp_size'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 63
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmp_randinit_lc_2exp_size'
.annotate 'line', 65
    .tailcall $P1(__ARG_1, __ARG_2)
# }
.annotate 'line', 66

.end # gmp_randinit_lc_2exp_size


.sub 'gmp_randinit_set'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 77
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmp_randinit_set'
.annotate 'line', 79
    $P1(__ARG_1, __ARG_2)
# }
.annotate 'line', 80

.end # gmp_randinit_set


.sub 'gmp_randclear'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 91
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmp_randclear'
.annotate 'line', 93
    $P1(__ARG_1)
# }
.annotate 'line', 94

.end # gmp_randclear


.sub 'gmp_randseed'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 107
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 108
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for seed in gmp_randseed"
    throw $P2
  __label_1: # endif
.annotate 'line', 109
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmp_randseed'
.annotate 'line', 111
    getattribute $P2, __ARG_2, 'ptr'
    $P1(__ARG_1, $P2)
# }
.annotate 'line', 112

.end # gmp_randseed


.sub 'gmp_randseed_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 115
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmp_randseed_ui'
.annotate 'line', 117
    $P1(__ARG_1, __ARG_2)
# }
.annotate 'line', 118

.end # gmp_randseed_ui


.sub 'gmp_urandomb_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 129
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmp_urandomb_ui'
.annotate 'line', 131
    .tailcall $P1(__ARG_1, __ARG_2)
# }
.annotate 'line', 132

.end # gmp_urandomb_ui


.sub 'gmp_urandomm_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 143
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmp_urandomm_ui'
.annotate 'line', 145
    .tailcall $P1(__ARG_1, __ARG_2)
# }
.annotate 'line', 146

.end # gmp_urandomm_ui

# End generated code
