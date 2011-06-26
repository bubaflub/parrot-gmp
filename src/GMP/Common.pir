# THIS IS A GENERATED FILE! DO NOT EDIT!
# Begin generated code

.namespace [ 'GMP'; 'Common' ]

.sub 'int_t'
# Body
# {
.annotate 'file', 'src/GMP/Common.winxed'
.annotate 'line', 6
# var int_t: $P1
    root_new $P2, ['parrot';'ResizablePMCArray']
    box $P3, 32
    push $P2, $P3
    box $P3, 1
    push $P2, $P3
    box $P3, 7
    push $P2, $P3
    new $P1, [ 'StructView' ], $P2
.annotate 'line', 7
    .return($P1)
# }
.annotate 'line', 8

.end # int_t


.sub 'gmp_randstate_t'
# Body
# {
.annotate 'line', 11
# var gmp_randstate_t: $P1
    root_new $P2, ['parrot';'ResizablePMCArray']
    box $P3, 32
    push $P2, $P3
    box $P3, 6
    push $P2, $P3
    box $P3, 29
    push $P2, $P3
    box $P3, 29
    push $P2, $P3
    box $P3, 29
    push $P2, $P3
    box $P3, 29
    push $P2, $P3
    box $P3, 29
    push $P2, $P3
    box $P3, 29
    push $P2, $P3
    new $P1, [ 'StructView' ], $P2
.annotate 'line', 21
    .return($P1)
# }
.annotate 'line', 22

.end # gmp_randstate_t


.sub 'gmpz_t'
# Body
# {
.annotate 'line', 25
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
.annotate 'line', 26
    .return($P1)
# }
.annotate 'line', 27

.end # gmpz_t


.sub 'stoa'
        .param string __ARG_1
# Body
# {
.annotate 'line', 30
# var str_to_cstring: $P1
    null $P2
# predefined dlfunc
    dlfunc $P1, $P2, 'Parrot_str_to_cstring', 'ppS'
.annotate 'line', 31
# predefined getinterp
.annotate 'line', 29
    getinterp $P2
.annotate 'line', 31
    .tailcall $P1($P2, __ARG_1)
# }
.annotate 'line', 32

.end # stoa


.sub 'atos'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 35
# var cstring_to_str: $P1
    null $P2
# predefined dlfunc
    dlfunc $P1, $P2, 'Parrot_str_new', 'Sppi'
.annotate 'line', 36
# predefined getinterp
.annotate 'line', 34
    getinterp $P2
.annotate 'line', 36
    .tailcall $P1($P2, __ARG_1, 0)
# }
.annotate 'line', 37

.end # atos

# End generated code
