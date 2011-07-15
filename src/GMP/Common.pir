# THIS IS A GENERATED FILE! DO NOT EDIT!
# Begin generated code

.namespace [ ]

.sub 'load' :anon :load
# Body
# {
.annotate 'file', 'src/GMP/Common.winxed'
.annotate 'line', 5
# var config: $P1
# predefined getinterp
    getinterp $P2
    $P1 = $P2[8]
.annotate 'line', 6
# file: $S1
# predefined string
    $S2 = $P1['load_ext']
    concat $S1, 'GMP/thunks', $S2
.annotate 'line', 7
# predefined loadlib
    loadlib $P2, $S1
# }
.annotate 'line', 8

.end # load

.namespace [ 'GMP'; 'Common' ]

.sub 'int_t'
# Body
# {
.annotate 'line', 13
# var int_t: $P1
    root_new $P2, ['parrot';'ResizablePMCArray']
    box $P3, 32
    push $P2, $P3
    box $P3, 1
    push $P2, $P3
    box $P3, 7
    push $P2, $P3
    new $P1, [ 'StructView' ], $P2
.annotate 'line', 14
    .return($P1)
# }
.annotate 'line', 15

.end # int_t


.sub 'gmp_randstate_t'
# Body
# {
.annotate 'line', 18
# var gmp_randstate_t: $P1
    root_new $P2, ['parrot';'ResizablePMCArray']
    box $P3, 32
    push $P2, $P3
    box $P3, 1
    push $P2, $P3
    box $P3, 29
    push $P2, $P3
    new $P1, [ 'StructView' ], $P2
.annotate 'line', 23
    .return($P1)
# }
.annotate 'line', 24

.end # gmp_randstate_t


.sub 'gmpz_t'
# Body
# {
.annotate 'line', 27
# var gmpz_t: $P1
    root_new $P2, ['parrot';'ResizablePMCArray']
    box $P3, 32
    push $P2, $P3
    box $P3, 3
    push $P2, $P3
    box $P3, 7
    push $P2, $P3
    box $P3, 29
    push $P2, $P3
    box $P3, 7
    push $P2, $P3
    new $P1, [ 'StructView' ], $P2
.annotate 'line', 28
    .return($P1)
# }
.annotate 'line', 29

.end # gmpz_t


.sub 'stoa'
        .param string __ARG_1
# Body
# {
.annotate 'line', 32
# var str_to_cstring: $P1
    null $P2
# predefined dlfunc
    dlfunc $P1, $P2, 'Parrot_str_to_cstring', 'ppS'
.annotate 'line', 33
# predefined getinterp
    getinterp $P2
    .tailcall $P1($P2, __ARG_1)
# }
.annotate 'line', 34

.end # stoa


.sub 'atos'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 37
# var cstring_to_str: $P1
    null $P2
# predefined dlfunc
    dlfunc $P1, $P2, 'Parrot_str_new', 'Sppi'
.annotate 'line', 38
# predefined getinterp
    getinterp $P2
    .tailcall $P1($P2, __ARG_1, 0)
# }
.annotate 'line', 39

.end # atos

# End generated code
