# THIS IS A GENERATED FILE! DO NOT EDIT!
# Begin generated code

.namespace [ ]

.sub 'load' :anon :load
# Body
# {
# predefined load_bytecode
.annotate 'file', 'src/GMP/Integer.winxed'
.annotate 'line', 4
    load_bytecode 'src/GMP/raw.pbc'
# }
.annotate 'line', 5

.end # load


.sub 'int_t'
# Body
# {
.annotate 'line', 8
# var int_t: $P1
    root_new $P2, ['parrot';'ResizablePMCArray']
    box $P3, 32
    push $P2, $P3
    box $P3, 1
    push $P2, $P3
    box $P3, 7
    push $P2, $P3
    new $P1, [ 'StructView' ], $P2
.annotate 'line', 9
    .return($P1)
# }
.annotate 'line', 10

.end # int_t


.sub 'gmpz_t' :subid('WSubId_1') :anon :immediate
# Body
# {
.annotate 'line', 13
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
.annotate 'line', 14
    .return($P1)
# }
.annotate 'line', 15

.end # gmpz_t


.sub 'stoa' :subid('WSubId_4') :anon
        .param string __ARG_1
# Body
# {
.annotate 'line', 18
# var str_to_cstring: $P1
    null $P2
# predefined dlfunc
    dlfunc $P1, $P2, 'Parrot_str_to_cstring', 'ppS'
.annotate 'line', 19
# predefined getinterp
.annotate 'line', 17
    getinterp $P2
.annotate 'line', 19
    .tailcall $P1($P2, __ARG_1)
# }
.annotate 'line', 20

.end # stoa


.sub 'atos' :subid('WSubId_5') :anon
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 23
# var cstring_to_str: $P1
    null $P2
# predefined dlfunc
    dlfunc $P1, $P2, 'Parrot_str_new', 'Sppi'
.annotate 'line', 24
# predefined getinterp
.annotate 'line', 22
    getinterp $P2
.annotate 'line', 24
    .tailcall $P1($P2, __ARG_1, 0)
# }
.annotate 'line', 25

.end # atos

.namespace [ 'GMP'; 'Integer' ]

.sub 'Integer' :method
        .param pmc __ARG_1 :optional
        .param int __ARG_2 :opt_flag
.const 'Sub' WSubId_1 = "WSubId_1"
.const 'Sub' WSubId_2 = "WSubId_2"
# Body
# {
.annotate 'line', 33
# var ptr: $P1
    $P6 = WSubId_1.'alloc'()
    setattribute self, 'ptr', $P6
    set $P1, $P6
.annotate 'line', 35
    unless __ARG_2 goto __label_1
# {
.annotate 'line', 36
    isa $I1, __ARG_1, 'String'
    unless $I1 goto __label_3
# {
.annotate 'line', 37
    get_hll_global $P2, [ 'GMP'; 'Raw' ] , '__gmpz_init'
.annotate 'line', 40
    $P2($P1)
.annotate 'line', 41
# predefined string
    set $S1, __ARG_1
    WSubId_2(self, $S1, 10)
.annotate 'line', 42
    setattribute self, 'ptr', $P1
# }
    goto __label_4
  __label_3: # else
.annotate 'line', 44
    isa $I1, __ARG_1, 'Integer'
    unless $I1 goto __label_5
# {
.annotate 'line', 45
    get_hll_global $P3, [ 'GMP'; 'Raw' ] , '__gmpz_init'
.annotate 'line', 48
    $P3($P1)
.annotate 'line', 49
# predefined string
    set $S1, __ARG_1
    WSubId_2(self, $S1, 10)
.annotate 'line', 50
    setattribute self, 'ptr', $P1
# }
    goto __label_6
  __label_5: # else
# {
# predefined Error
.annotate 'line', 53
    root_new $P5, ['parrot';'Exception']
    $P5['message'] = "incorrect type init for Integer constructor"
    throw $P5
# }
  __label_6: # endif
  __label_4: # endif
# }
    goto __label_2
  __label_1: # else
# {
.annotate 'line', 56
    get_hll_global $P4, [ 'GMP'; 'Raw' ] , '__gmpz_init'
.annotate 'line', 57
    $P4($P1)
.annotate 'line', 58
    setattribute self, 'ptr', $P1
# }
  __label_2: # endif
# }
.annotate 'line', 60

.end # Integer


.sub 'destroy' :method :vtable('destroy')
# Body
# {
.annotate 'line', 63
    getattribute $P3, self, 'ptr'
    if_null $P3, __label_1
# {
.annotate 'line', 64
# var ptr: $P1
    getattribute $P1, self, 'ptr'
.annotate 'line', 65
    null $P3
    setattribute self, 'ptr', $P3
.annotate 'line', 66
    get_hll_global $P2, [ 'GMP'; 'Raw' ] , '__gmpz_clear'
.annotate 'line', 67
    $P2($P1)
# }
  __label_1: # endif
# }
.annotate 'line', 69

.end # destroy


.sub 'get_string' :method :vtable
.const 'Sub' WSubId_3 = "WSubId_3"
# Body
# {
.annotate 'line', 72
    .tailcall WSubId_3("", 10, self)
# }
.annotate 'line', 73

.end # get_string

.sub Winxed_class_init :anon :load :init
    newclass $P0, [ 'GMP'; 'Integer' ]
.annotate 'line', 29
    addattribute $P0, 'ptr'
.end
.namespace [ ]

.sub 'mpz_init'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 86
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 87
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_init"
    throw $P2
  __label_1: # endif
.annotate 'line', 88
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init'
.annotate 'line', 89
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2)
# }
.annotate 'line', 90

.end # mpz_init


.sub 'mpz_init2'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 101
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 102
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_init2"
    throw $P2
  __label_1: # endif
.annotate 'line', 103
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init2'
.annotate 'line', 104
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 105

.end # mpz_init2


.sub 'mpz_clear'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 116
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 117
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_clear"
    throw $P2
  __label_1: # endif
.annotate 'line', 118
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_clear'
.annotate 'line', 119
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2)
# }
.annotate 'line', 120

.end # mpz_clear


.sub 'mpz_realloc2'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 131
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 132
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_realloc2"
    throw $P2
  __label_1: # endif
.annotate 'line', 133
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_realloc2'
.annotate 'line', 134
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 135

.end # mpz_realloc2


.sub 'mpz_set'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 152
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 153
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set"
    throw $P2
  __label_1: # endif
.annotate 'line', 154
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 155
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_set"
    throw $P2
  __label_2: # endif
.annotate 'line', 156
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set'
.annotate 'line', 157
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 158

.end # mpz_set


.sub 'mpz_set_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 161
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 162
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 163
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set_ui'
.annotate 'line', 164
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 165

.end # mpz_set_ui


.sub 'mpz_set_si'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 168
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 169
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 170
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set_si'
.annotate 'line', 171
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 172

.end # mpz_set_si


.sub 'mpz_set_d'
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 175
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 176
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 177
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set_d'
.annotate 'line', 178
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 179

.end # mpz_set_d


.sub 'mpz_set_str' :subid('WSubId_2')
        .param pmc __ARG_1
        .param string __ARG_2
        .param int __ARG_3
.const 'Sub' WSubId_4 = "WSubId_4"
# Body
# {
.annotate 'line', 190
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 191
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set_str"
    throw $P2
  __label_1: # endif
.annotate 'line', 192
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set_str'
.annotate 'line', 193
    getattribute $P2, __ARG_1, 'ptr'
    $P3 = WSubId_4(__ARG_2)
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 194

.end # mpz_set_str


.sub 'mpz_swap'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 205
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 206
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop1 in mpz_swap"
    throw $P2
  __label_1: # endif
.annotate 'line', 207
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 208
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop2 in mpz_swap"
    throw $P2
  __label_2: # endif
.annotate 'line', 209
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_swap'
.annotate 'line', 210
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 211

.end # mpz_swap


.sub 'mpz_init_set'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 228
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 229
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set"
    throw $P2
  __label_1: # endif
.annotate 'line', 230
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 231
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_init_set"
    throw $P2
  __label_2: # endif
.annotate 'line', 232
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init_set'
.annotate 'line', 233
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 234

.end # mpz_init_set


.sub 'mpz_init_set_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 237
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 238
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 239
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init_set_ui'
.annotate 'line', 240
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 241

.end # mpz_init_set_ui


.sub 'mpz_init_set_si'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 244
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 245
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 246
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init_set_si'
.annotate 'line', 247
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 248

.end # mpz_init_set_si


.sub 'mpz_init_set_d'
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 251
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 252
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 253
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init_set_d'
.annotate 'line', 254
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 255

.end # mpz_init_set_d


.sub 'mpz_init_set_str'
        .param pmc __ARG_1
        .param string __ARG_2
        .param int __ARG_3
.const 'Sub' WSubId_4 = "WSubId_4"
# Body
# {
.annotate 'line', 266
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 267
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set_str"
    throw $P2
  __label_1: # endif
.annotate 'line', 268
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init_set_str'
.annotate 'line', 269
    getattribute $P2, __ARG_1, 'ptr'
    $P3 = WSubId_4(__ARG_2)
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 270

.end # mpz_init_set_str


.sub 'mpz_get_ui'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 281
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 282
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 283
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_get_ui'
.annotate 'line', 284
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 285

.end # mpz_get_ui


.sub 'mpz_get_si'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 296
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 297
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 298
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_get_si'
.annotate 'line', 299
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 300

.end # mpz_get_si


.sub 'mpz_get_d'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 311
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 312
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 313
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_get_d'
.annotate 'line', 314
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 315

.end # mpz_get_d


.sub 'mpz_get_d_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 326
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 327
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_d_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 328
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_get_d_2exp'
.annotate 'line', 329
    getattribute $P2, __ARG_2, 'ptr'
    .tailcall $P1(__ARG_1, $P2)
# }
.annotate 'line', 330

.end # mpz_get_d_2exp


.sub 'mpz_get_str' :subid('WSubId_3')
        .param string __ARG_1
        .param int __ARG_2
        .param pmc __ARG_3
.const 'Sub' WSubId_5 = "WSubId_5"
.const 'Sub' WSubId_4 = "WSubId_4"
# Body
# {
.annotate 'line', 341
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 342
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_str"
    throw $P2
  __label_1: # endif
.annotate 'line', 343
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_get_str'
.annotate 'line', 344
    $P3 = WSubId_4(__ARG_1)
    getattribute $P4, __ARG_3, 'ptr'
    $P2 = $P1($P3, __ARG_2, $P4)
    .tailcall WSubId_5($P2)
# }
.annotate 'line', 345

.end # mpz_get_str


.sub 'mpz_add'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 358
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 359
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_add"
    throw $P2
  __label_1: # endif
.annotate 'line', 360
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 361
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_add"
    throw $P2
  __label_2: # endif
.annotate 'line', 362
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 363
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_add"
    throw $P2
  __label_3: # endif
.annotate 'line', 364
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_add'
.annotate 'line', 365
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 366

.end # mpz_add


.sub 'mpz_add_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 369
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 370
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_add_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 371
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 372
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_add_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 373
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_add_ui'
.annotate 'line', 374
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 375

.end # mpz_add_ui


.sub 'mpz_sub'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 390
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 391
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_sub"
    throw $P2
  __label_1: # endif
.annotate 'line', 392
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 393
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_sub"
    throw $P2
  __label_2: # endif
.annotate 'line', 394
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 395
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_sub"
    throw $P2
  __label_3: # endif
.annotate 'line', 396
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sub'
.annotate 'line', 397
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 398

.end # mpz_sub


.sub 'mpz_sub_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 401
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 402
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_sub_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 403
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 404
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_sub_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 405
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sub_ui'
.annotate 'line', 406
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 407

.end # mpz_sub_ui


.sub 'mpz_ui_sub'
        .param pmc __ARG_1
        .param int __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 410
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 411
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_ui_sub"
    throw $P2
  __label_1: # endif
.annotate 'line', 412
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 413
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_ui_sub"
    throw $P2
  __label_2: # endif
.annotate 'line', 414
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_ui_sub'
.annotate 'line', 415
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_3, 'ptr'
    $P1($P2, __ARG_2, $P3)
# }
.annotate 'line', 416

.end # mpz_ui_sub


.sub 'mpz_mul'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 431
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 432
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_mul"
    throw $P2
  __label_1: # endif
.annotate 'line', 433
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 434
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul"
    throw $P2
  __label_2: # endif
.annotate 'line', 435
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 436
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_mul"
    throw $P2
  __label_3: # endif
.annotate 'line', 437
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mul'
.annotate 'line', 438
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 439

.end # mpz_mul


.sub 'mpz_mul_si'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 442
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 443
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_mul_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 444
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 445
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul_si"
    throw $P2
  __label_2: # endif
.annotate 'line', 446
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mul_si'
.annotate 'line', 447
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 448

.end # mpz_mul_si


.sub 'mpz_mul_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 451
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 452
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_mul_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 453
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 454
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 455
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mul_ui'
.annotate 'line', 456
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 457

.end # mpz_mul_ui


.sub 'mpz_addmul'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 470
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 471
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_addmul"
    throw $P2
  __label_1: # endif
.annotate 'line', 472
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 473
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_addmul"
    throw $P2
  __label_2: # endif
.annotate 'line', 474
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 475
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_addmul"
    throw $P2
  __label_3: # endif
.annotate 'line', 476
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_addmul'
.annotate 'line', 477
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 478

.end # mpz_addmul


.sub 'mpz_addmul_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 481
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 482
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_addmul_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 483
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 484
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_addmul_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 485
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_addmul_ui'
.annotate 'line', 486
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 487

.end # mpz_addmul_ui


.sub 'mpz_submul'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 500
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 501
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_submul"
    throw $P2
  __label_1: # endif
.annotate 'line', 502
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 503
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_submul"
    throw $P2
  __label_2: # endif
.annotate 'line', 504
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 505
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_submul"
    throw $P2
  __label_3: # endif
.annotate 'line', 506
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_submul'
.annotate 'line', 507
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 508

.end # mpz_submul


.sub 'mpz_submul_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 511
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 512
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_submul_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 513
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 514
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_submul_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 515
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_submul_ui'
.annotate 'line', 516
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 517

.end # mpz_submul_ui


.sub 'mpz_mul_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 528
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 529
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_mul_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 530
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 531
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 532
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mul_2exp'
.annotate 'line', 533
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 534

.end # mpz_mul_2exp


.sub 'mpz_neg'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 545
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 546
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_neg"
    throw $P2
  __label_1: # endif
.annotate 'line', 547
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 548
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_neg"
    throw $P2
  __label_2: # endif
.annotate 'line', 549
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_neg'
.annotate 'line', 550
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 551

.end # mpz_neg


.sub 'mpz_abs'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 562
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 563
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_abs"
    throw $P2
  __label_1: # endif
.annotate 'line', 564
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 565
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_abs"
    throw $P2
  __label_2: # endif
.annotate 'line', 566
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_abs'
.annotate 'line', 567
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 568

.end # mpz_abs


.sub 'mpz_cdiv_q'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 593
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 594
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_q"
    throw $P2
  __label_1: # endif
.annotate 'line', 595
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 596
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_q"
    throw $P2
  __label_2: # endif
.annotate 'line', 597
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 598
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_cdiv_q"
    throw $P2
  __label_3: # endif
.annotate 'line', 599
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_q'
.annotate 'line', 600
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 601

.end # mpz_cdiv_q


.sub 'mpz_cdiv_r'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 604
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 605
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_r"
    throw $P2
  __label_1: # endif
.annotate 'line', 606
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 607
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_r"
    throw $P2
  __label_2: # endif
.annotate 'line', 608
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 609
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_cdiv_r"
    throw $P2
  __label_3: # endif
.annotate 'line', 610
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_r'
.annotate 'line', 611
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 612

.end # mpz_cdiv_r


.sub 'mpz_cdiv_qr'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 615
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 616
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_qr"
    throw $P2
  __label_1: # endif
.annotate 'line', 617
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 618
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_qr"
    throw $P2
  __label_2: # endif
.annotate 'line', 619
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 620
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_qr"
    throw $P2
  __label_3: # endif
.annotate 'line', 621
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 622
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_cdiv_qr"
    throw $P2
  __label_4: # endif
.annotate 'line', 623
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_qr'
.annotate 'line', 624
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 625

.end # mpz_cdiv_qr


.sub 'mpz_cdiv_q_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 628
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 629
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_q_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 630
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 631
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_q_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 632
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_q_ui'
.annotate 'line', 633
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 634

.end # mpz_cdiv_q_ui


.sub 'mpz_cdiv_r_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 637
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 638
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_r_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 639
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 640
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_r_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 641
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_r_ui'
.annotate 'line', 642
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 643

.end # mpz_cdiv_r_ui


.sub 'mpz_cdiv_qr_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 646
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 647
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_qr_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 648
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 649
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_qr_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 650
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 651
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_qr_ui"
    throw $P2
  __label_3: # endif
.annotate 'line', 652
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_qr_ui'
.annotate 'line', 653
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 654

.end # mpz_cdiv_qr_ui


.sub 'mpz_cdiv_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 657
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 658
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 659
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_ui'
.annotate 'line', 660
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 661

.end # mpz_cdiv_ui


.sub 'mpz_cdiv_q_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 664
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 665
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_q_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 666
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 667
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_q_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 668
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_q_2exp'
.annotate 'line', 669
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 670

.end # mpz_cdiv_q_2exp


.sub 'mpz_cdiv_r_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 673
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 674
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_r_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 675
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 676
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_r_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 677
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_r_2exp'
.annotate 'line', 678
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 679

.end # mpz_cdiv_r_2exp


.sub 'mpz_fdiv_q'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 704
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 705
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_q"
    throw $P2
  __label_1: # endif
.annotate 'line', 706
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 707
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_q"
    throw $P2
  __label_2: # endif
.annotate 'line', 708
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 709
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_fdiv_q"
    throw $P2
  __label_3: # endif
.annotate 'line', 710
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_q'
.annotate 'line', 711
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 712

.end # mpz_fdiv_q


.sub 'mpz_fdiv_r'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 715
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 716
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_r"
    throw $P2
  __label_1: # endif
.annotate 'line', 717
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 718
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_r"
    throw $P2
  __label_2: # endif
.annotate 'line', 719
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 720
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_fdiv_r"
    throw $P2
  __label_3: # endif
.annotate 'line', 721
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_r'
.annotate 'line', 722
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 723

.end # mpz_fdiv_r


.sub 'mpz_fdiv_qr'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 726
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 727
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_qr"
    throw $P2
  __label_1: # endif
.annotate 'line', 728
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 729
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_qr"
    throw $P2
  __label_2: # endif
.annotate 'line', 730
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 731
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_qr"
    throw $P2
  __label_3: # endif
.annotate 'line', 732
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 733
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_fdiv_qr"
    throw $P2
  __label_4: # endif
.annotate 'line', 734
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_qr'
.annotate 'line', 735
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 736

.end # mpz_fdiv_qr


.sub 'mpz_fdiv_q_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 739
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 740
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_q_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 741
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 742
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_q_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 743
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_q_ui'
.annotate 'line', 744
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 745

.end # mpz_fdiv_q_ui


.sub 'mpz_fdiv_r_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 748
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 749
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_r_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 750
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 751
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_r_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 752
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_r_ui'
.annotate 'line', 753
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 754

.end # mpz_fdiv_r_ui


.sub 'mpz_fdiv_qr_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 757
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 758
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_qr_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 759
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 760
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_qr_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 761
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 762
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_qr_ui"
    throw $P2
  __label_3: # endif
.annotate 'line', 763
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_qr_ui'
.annotate 'line', 764
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 765

.end # mpz_fdiv_qr_ui


.sub 'mpz_fdiv_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 768
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 769
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 770
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_ui'
.annotate 'line', 771
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 772

.end # mpz_fdiv_ui


.sub 'mpz_fdiv_q_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 775
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 776
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_q_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 777
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 778
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_q_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 779
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_q_2exp'
.annotate 'line', 780
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 781

.end # mpz_fdiv_q_2exp


.sub 'mpz_fdiv_r_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 784
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 785
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_r_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 786
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 787
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_r_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 788
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_r_2exp'
.annotate 'line', 789
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 790

.end # mpz_fdiv_r_2exp


.sub 'mpz_tdiv_q'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 819
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 820
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_q"
    throw $P2
  __label_1: # endif
.annotate 'line', 821
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 822
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_q"
    throw $P2
  __label_2: # endif
.annotate 'line', 823
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 824
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_tdiv_q"
    throw $P2
  __label_3: # endif
.annotate 'line', 825
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_q'
.annotate 'line', 826
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 827

.end # mpz_tdiv_q


.sub 'mpz_tdiv_r'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 830
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 831
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_r"
    throw $P2
  __label_1: # endif
.annotate 'line', 832
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 833
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_r"
    throw $P2
  __label_2: # endif
.annotate 'line', 834
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 835
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_tdiv_r"
    throw $P2
  __label_3: # endif
.annotate 'line', 836
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_r'
.annotate 'line', 837
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 838

.end # mpz_tdiv_r


.sub 'mpz_tdiv_qr'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 841
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 842
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_qr"
    throw $P2
  __label_1: # endif
.annotate 'line', 843
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 844
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_qr"
    throw $P2
  __label_2: # endif
.annotate 'line', 845
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 846
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_qr"
    throw $P2
  __label_3: # endif
.annotate 'line', 847
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 848
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_tdiv_qr"
    throw $P2
  __label_4: # endif
.annotate 'line', 849
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_qr'
.annotate 'line', 850
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 851

.end # mpz_tdiv_qr


.sub 'mpz_tdiv_q_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 854
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 855
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_q_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 856
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 857
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_q_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 858
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_q_ui'
.annotate 'line', 859
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 860

.end # mpz_tdiv_q_ui


.sub 'mpz_tdiv_r_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 863
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 864
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_r_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 865
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 866
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_r_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 867
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_r_ui'
.annotate 'line', 868
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 869

.end # mpz_tdiv_r_ui


.sub 'mpz_tdiv_qr_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 872
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 873
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_qr_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 874
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 875
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_qr_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 876
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 877
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_qr_ui"
    throw $P2
  __label_3: # endif
.annotate 'line', 878
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_qr_ui'
.annotate 'line', 879
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 880

.end # mpz_tdiv_qr_ui


.sub 'mpz_tdiv_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 883
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 884
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 885
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_ui'
.annotate 'line', 886
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 887

.end # mpz_tdiv_ui


.sub 'mpz_tdiv_q_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 890
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 891
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_q_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 892
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 893
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_q_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 894
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_q_2exp'
.annotate 'line', 895
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 896

.end # mpz_tdiv_q_2exp


.sub 'mpz_tdiv_r_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 899
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 900
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_r_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 901
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 902
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_r_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 903
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_r_2exp'
.annotate 'line', 904
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 905

.end # mpz_tdiv_r_2exp


.sub 'mpz_mod'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 918
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 919
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_mod"
    throw $P2
  __label_1: # endif
.annotate 'line', 920
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 921
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_mod"
    throw $P2
  __label_2: # endif
.annotate 'line', 922
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 923
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_mod"
    throw $P2
  __label_3: # endif
.annotate 'line', 924
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mod'
.annotate 'line', 925
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 926

.end # mpz_mod


.sub 'mpz_mod_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 929
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 930
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_mod_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 931
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 932
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_mod_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 933
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_r_ui'
.annotate 'line', 934
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 935

.end # mpz_mod_ui


.sub 'mpz_divexact'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 948
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 949
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_divexact"
    throw $P2
  __label_1: # endif
.annotate 'line', 950
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 951
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divexact"
    throw $P2
  __label_2: # endif
.annotate 'line', 952
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 953
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_divexact"
    throw $P2
  __label_3: # endif
.annotate 'line', 954
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divexact'
.annotate 'line', 955
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 956

.end # mpz_divexact


.sub 'mpz_divexact_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 959
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 960
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_divexact_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 961
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 962
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divexact_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 963
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divexact_ui'
.annotate 'line', 964
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 965

.end # mpz_divexact_ui


.sub 'mpz_divisible_p'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 980
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 981
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divisible_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 982
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 983
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_divisible_p"
    throw $P2
  __label_2: # endif
.annotate 'line', 984
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divisible_p'
.annotate 'line', 985
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 986

.end # mpz_divisible_p


.sub 'mpz_divisible_ui_p'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 989
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 990
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divisible_ui_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 991
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divisible_ui_p'
.annotate 'line', 992
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 993

.end # mpz_divisible_ui_p


.sub 'mpz_divisible_2exp_p'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 996
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 997
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divisible_2exp_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 998
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divisible_2exp_p'
.annotate 'line', 999
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1000

.end # mpz_divisible_2exp_p


.sub 'mpz_congruent_p'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1015
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1016
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_congruent_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1017
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1018
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for c in mpz_congruent_p"
    throw $P2
  __label_2: # endif
.annotate 'line', 1019
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1020
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_congruent_p"
    throw $P2
  __label_3: # endif
.annotate 'line', 1021
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_congruent_p'
.annotate 'line', 1022
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4)
# }
.annotate 'line', 1023

.end # mpz_congruent_p


.sub 'mpz_congruent_ui_p'
        .param pmc __ARG_1
        .param int __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1026
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1027
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_congruent_ui_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1028
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_congruent_ui_p'
.annotate 'line', 1029
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1030

.end # mpz_congruent_ui_p


.sub 'mpz_congruent_2exp_p'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1033
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1034
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_congruent_2exp_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1035
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1036
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for c in mpz_congruent_2exp_p"
    throw $P2
  __label_2: # endif
.annotate 'line', 1037
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_congruent_2exp_p'
.annotate 'line', 1038
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1039

.end # mpz_congruent_2exp_p


.sub 'mpz_powm'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 1052
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1053
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_powm"
    throw $P2
  __label_1: # endif
.annotate 'line', 1054
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1055
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_powm"
    throw $P2
  __label_2: # endif
.annotate 'line', 1056
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1057
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for exp in mpz_powm"
    throw $P2
  __label_3: # endif
.annotate 'line', 1058
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 1059
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for mod in mpz_powm"
    throw $P2
  __label_4: # endif
.annotate 'line', 1060
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_powm'
.annotate 'line', 1061
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 1062

.end # mpz_powm


.sub 'mpz_powm_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 1065
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1066
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_powm_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1067
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1068
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_powm_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1069
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1070
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for mod in mpz_powm_ui"
    throw $P2
  __label_3: # endif
.annotate 'line', 1071
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_powm_ui'
.annotate 'line', 1072
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_4, 'ptr'
    $P1($P2, $P3, __ARG_3, $P4)
# }
.annotate 'line', 1073

.end # mpz_powm_ui


.sub 'mpz_powm_sec'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 1084
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1085
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_powm_sec"
    throw $P2
  __label_1: # endif
.annotate 'line', 1086
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1087
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_powm_sec"
    throw $P2
  __label_2: # endif
.annotate 'line', 1088
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1089
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for exp in mpz_powm_sec"
    throw $P2
  __label_3: # endif
.annotate 'line', 1090
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 1091
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for mod in mpz_powm_sec"
    throw $P2
  __label_4: # endif
.annotate 'line', 1092
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_powm_sec'
.annotate 'line', 1093
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 1094

.end # mpz_powm_sec


.sub 'mpz_pow_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1107
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1108
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_pow_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1109
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1110
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_pow_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1111
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_pow_ui'
.annotate 'line', 1112
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1113

.end # mpz_pow_ui


.sub 'mpz_ui_pow_ui'
        .param pmc __ARG_1
        .param int __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1116
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1117
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_ui_pow_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1118
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_ui_pow_ui'
.annotate 'line', 1119
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1120

.end # mpz_ui_pow_ui


.sub 'mpz_root'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1131
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1132
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_root"
    throw $P2
  __label_1: # endif
.annotate 'line', 1133
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1134
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_root"
    throw $P2
  __label_2: # endif
.annotate 'line', 1135
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_root'
.annotate 'line', 1136
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1137

.end # mpz_root


.sub 'mpz_rootrem'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 1148
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1149
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for root in mpz_rootrem"
    throw $P2
  __label_1: # endif
.annotate 'line', 1150
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1151
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rem in mpz_rootrem"
    throw $P2
  __label_2: # endif
.annotate 'line', 1152
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1153
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for u in mpz_rootrem"
    throw $P2
  __label_3: # endif
.annotate 'line', 1154
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_rootrem'
.annotate 'line', 1155
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 1156

.end # mpz_rootrem


.sub 'mpz_sqrt'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1167
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1168
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_sqrt"
    throw $P2
  __label_1: # endif
.annotate 'line', 1169
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1170
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_sqrt"
    throw $P2
  __label_2: # endif
.annotate 'line', 1171
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sqrt'
.annotate 'line', 1172
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 1173

.end # mpz_sqrt


.sub 'mpz_sqrtrem'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1184
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1185
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop1 in mpz_sqrtrem"
    throw $P2
  __label_1: # endif
.annotate 'line', 1186
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1187
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop2 in mpz_sqrtrem"
    throw $P2
  __label_2: # endif
.annotate 'line', 1188
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1189
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_sqrtrem"
    throw $P2
  __label_3: # endif
.annotate 'line', 1190
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sqrtrem'
.annotate 'line', 1191
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1192

.end # mpz_sqrtrem


.sub 'mpz_perfect_power_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1203
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1204
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_perfect_power_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1205
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_perfect_power_p'
.annotate 'line', 1206
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1207

.end # mpz_perfect_power_p


.sub 'mpz_perfect_square_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1218
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1219
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_perfect_square_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1220
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_perfect_square_p'
.annotate 'line', 1221
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1222

.end # mpz_perfect_square_p


.sub 'mpz_probab_prime_p'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1233
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1234
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_probab_prime_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1235
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_probab_prime_p'
.annotate 'line', 1236
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1237

.end # mpz_probab_prime_p


.sub 'mpz_nextprime'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1248
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1249
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_nextprime"
    throw $P2
  __label_1: # endif
.annotate 'line', 1250
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1251
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_nextprime"
    throw $P2
  __label_2: # endif
.annotate 'line', 1252
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_nextprime'
.annotate 'line', 1253
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 1254

.end # mpz_nextprime


.sub 'mpz_gcd'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1265
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1266
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_gcd"
    throw $P2
  __label_1: # endif
.annotate 'line', 1267
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1268
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_gcd"
    throw $P2
  __label_2: # endif
.annotate 'line', 1269
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1270
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_gcd"
    throw $P2
  __label_3: # endif
.annotate 'line', 1271
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_gcd'
.annotate 'line', 1272
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1273

.end # mpz_gcd


.sub 'mpz_gcd_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1284
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1285
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_gcd_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1286
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1287
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_gcd_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1288
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_gcd_ui'
.annotate 'line', 1289
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1290

.end # mpz_gcd_ui


.sub 'mpz_gcdext'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
        .param pmc __ARG_5
# Body
# {
.annotate 'line', 1301
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1302
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for g in mpz_gcdext"
    throw $P2
  __label_1: # endif
.annotate 'line', 1303
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1304
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for s in mpz_gcdext"
    throw $P2
  __label_2: # endif
.annotate 'line', 1305
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1306
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for t in mpz_gcdext"
    throw $P2
  __label_3: # endif
.annotate 'line', 1307
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 1308
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_gcdext"
    throw $P2
  __label_4: # endif
.annotate 'line', 1309
    isa $I2, __ARG_5, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_5
# predefined Error
.annotate 'line', 1310
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_gcdext"
    throw $P2
  __label_5: # endif
.annotate 'line', 1311
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_gcdext'
.annotate 'line', 1312
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    getattribute $P6, __ARG_5, 'ptr'
    $P1($P2, $P3, $P4, $P5, $P6)
# }
.annotate 'line', 1313

.end # mpz_gcdext


.sub 'mpz_lcm'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1326
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1327
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_lcm"
    throw $P2
  __label_1: # endif
.annotate 'line', 1328
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1329
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_lcm"
    throw $P2
  __label_2: # endif
.annotate 'line', 1330
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1331
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_lcm"
    throw $P2
  __label_3: # endif
.annotate 'line', 1332
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_lcm'
.annotate 'line', 1333
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1334

.end # mpz_lcm


.sub 'mpz_lcm_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1337
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1338
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_lcm_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1339
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1340
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_lcm_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1341
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_lcm_ui'
.annotate 'line', 1342
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1343

.end # mpz_lcm_ui


.sub 'mpz_invert'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1354
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1355
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_invert"
    throw $P2
  __label_1: # endif
.annotate 'line', 1356
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1357
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_invert"
    throw $P2
  __label_2: # endif
.annotate 'line', 1358
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1359
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_invert"
    throw $P2
  __label_3: # endif
.annotate 'line', 1360
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_invert'
.annotate 'line', 1361
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4)
# }
.annotate 'line', 1362

.end # mpz_invert


.sub 'mpz_jacobi'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1373
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1374
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_jacobi"
    throw $P2
  __label_1: # endif
.annotate 'line', 1375
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1376
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_jacobi"
    throw $P2
  __label_2: # endif
.annotate 'line', 1377
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_jacobi'
.annotate 'line', 1378
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1379

.end # mpz_jacobi


.sub 'mpz_legendre'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1390
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1391
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_legendre"
    throw $P2
  __label_1: # endif
.annotate 'line', 1392
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1393
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for p in mpz_legendre"
    throw $P2
  __label_2: # endif
.annotate 'line', 1394
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_legendre'
.annotate 'line', 1395
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1396

.end # mpz_legendre


.sub 'mpz_kronecker'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1415
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1416
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_kronecker"
    throw $P2
  __label_1: # endif
.annotate 'line', 1417
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1418
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_kronecker"
    throw $P2
  __label_2: # endif
.annotate 'line', 1419
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_kronecker'
.annotate 'line', 1420
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1421

.end # mpz_kronecker


.sub 'mpz_kronecker_si'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1424
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1425
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_kronecker_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 1426
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_kronecker_si'
.annotate 'line', 1427
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1428

.end # mpz_kronecker_si


.sub 'mpz_kronecker_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1431
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1432
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_kronecker_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1433
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_kronecker_ui'
.annotate 'line', 1434
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1435

.end # mpz_kronecker_ui


.sub 'mpz_si_kronecker'
        .param int __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1438
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1439
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_si_kronecker"
    throw $P2
  __label_1: # endif
.annotate 'line', 1440
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_si_kronecker'
.annotate 'line', 1441
    getattribute $P2, __ARG_2, 'ptr'
    .tailcall $P1(__ARG_1, $P2)
# }
.annotate 'line', 1442

.end # mpz_si_kronecker


.sub 'mpz_ui_kronecker'
        .param int __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1445
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1446
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_ui_kronecker"
    throw $P2
  __label_1: # endif
.annotate 'line', 1447
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_ui_kronecker'
.annotate 'line', 1448
    getattribute $P2, __ARG_2, 'ptr'
    .tailcall $P1(__ARG_1, $P2)
# }
.annotate 'line', 1449

.end # mpz_ui_kronecker


.sub 'mpz_remove'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1460
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1461
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_remove"
    throw $P2
  __label_1: # endif
.annotate 'line', 1462
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1463
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_remove"
    throw $P2
  __label_2: # endif
.annotate 'line', 1464
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1465
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for f in mpz_remove"
    throw $P2
  __label_3: # endif
.annotate 'line', 1466
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_remove'
.annotate 'line', 1467
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4)
# }
.annotate 'line', 1468

.end # mpz_remove


.sub 'mpz_fac_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1479
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1480
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_fac_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1481
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fac_ui'
.annotate 'line', 1482
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1483

.end # mpz_fac_ui


.sub 'mpz_bin_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1496
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1497
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_bin_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1498
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1499
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_bin_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1500
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_bin_ui'
.annotate 'line', 1501
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1502

.end # mpz_bin_ui


.sub 'mpz_bin_uiui'
        .param pmc __ARG_1
        .param int __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1505
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1506
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_bin_uiui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1507
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_bin_uiui'
.annotate 'line', 1508
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1509

.end # mpz_bin_uiui


.sub 'mpz_fib_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1522
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1523
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for fn in mpz_fib_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1524
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fib_ui'
.annotate 'line', 1525
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1526

.end # mpz_fib_ui


.sub 'mpz_fib2_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1529
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1530
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for fn in mpz_fib2_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1531
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1532
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for fnsub1 in mpz_fib2_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1533
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fib2_ui'
.annotate 'line', 1534
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1535

.end # mpz_fib2_ui


.sub 'mpz_lucnum_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1548
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1549
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for ln in mpz_lucnum_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1550
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_lucnum_ui'
.annotate 'line', 1551
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1552

.end # mpz_lucnum_ui


.sub 'mpz_lucnum2_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1555
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1556
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for ln in mpz_lucnum2_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1557
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1558
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for lnsub1 in mpz_lucnum2_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1559
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_lucnum2_ui'
.annotate 'line', 1560
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1561

.end # mpz_lucnum2_ui


.sub 'mpz_cmp'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1574
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1575
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmp"
    throw $P2
  __label_1: # endif
.annotate 'line', 1576
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1577
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_cmp"
    throw $P2
  __label_2: # endif
.annotate 'line', 1578
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmp'
.annotate 'line', 1579
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1580

.end # mpz_cmp


.sub 'mpz_cmp_d'
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 1583
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1584
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmp_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 1585
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmp_d'
.annotate 'line', 1586
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1587

.end # mpz_cmp_d


.sub 'mpz_cmpabs'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1602
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1603
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmpabs"
    throw $P2
  __label_1: # endif
.annotate 'line', 1604
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1605
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_cmpabs"
    throw $P2
  __label_2: # endif
.annotate 'line', 1606
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmpabs'
.annotate 'line', 1607
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1608

.end # mpz_cmpabs


.sub 'mpz_cmpabs_d'
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 1611
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1612
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmpabs_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 1613
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmpabs_d'
.annotate 'line', 1614
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1615

.end # mpz_cmpabs_d


.sub 'mpz_cmpabs_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1618
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1619
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmpabs_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1620
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmpabs_ui'
.annotate 'line', 1621
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1622

.end # mpz_cmpabs_ui


.sub 'mpz_and'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1633
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1634
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_and"
    throw $P2
  __label_1: # endif
.annotate 'line', 1635
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1636
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_and"
    throw $P2
  __label_2: # endif
.annotate 'line', 1637
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1638
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_and"
    throw $P2
  __label_3: # endif
.annotate 'line', 1639
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_and'
.annotate 'line', 1640
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1641

.end # mpz_and


.sub 'mpz_ior'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1652
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1653
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_ior"
    throw $P2
  __label_1: # endif
.annotate 'line', 1654
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1655
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_ior"
    throw $P2
  __label_2: # endif
.annotate 'line', 1656
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1657
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_ior"
    throw $P2
  __label_3: # endif
.annotate 'line', 1658
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_ior'
.annotate 'line', 1659
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1660

.end # mpz_ior


.sub 'mpz_xor'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1671
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1672
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_xor"
    throw $P2
  __label_1: # endif
.annotate 'line', 1673
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1674
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_xor"
    throw $P2
  __label_2: # endif
.annotate 'line', 1675
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1676
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_xor"
    throw $P2
  __label_3: # endif
.annotate 'line', 1677
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_xor'
.annotate 'line', 1678
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1679

.end # mpz_xor


.sub 'mpz_com'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1690
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1691
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_com"
    throw $P2
  __label_1: # endif
.annotate 'line', 1692
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1693
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_com"
    throw $P2
  __label_2: # endif
.annotate 'line', 1694
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_com'
.annotate 'line', 1695
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 1696

.end # mpz_com


.sub 'mpz_popcount'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1707
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1708
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_popcount"
    throw $P2
  __label_1: # endif
.annotate 'line', 1709
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_popcount'
.annotate 'line', 1710
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1711

.end # mpz_popcount


.sub 'mpz_hamdist'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1722
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1723
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_hamdist"
    throw $P2
  __label_1: # endif
.annotate 'line', 1724
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1725
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_hamdist"
    throw $P2
  __label_2: # endif
.annotate 'line', 1726
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_hamdist'
.annotate 'line', 1727
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1728

.end # mpz_hamdist


.sub 'mpz_scan0'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1741
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1742
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_scan0"
    throw $P2
  __label_1: # endif
.annotate 'line', 1743
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_scan0'
.annotate 'line', 1744
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1745

.end # mpz_scan0


.sub 'mpz_scan1'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1748
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1749
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_scan1"
    throw $P2
  __label_1: # endif
.annotate 'line', 1750
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_scan1'
.annotate 'line', 1751
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1752

.end # mpz_scan1


.sub 'mpz_setbit'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1763
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1764
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_setbit"
    throw $P2
  __label_1: # endif
.annotate 'line', 1765
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_setbit'
.annotate 'line', 1766
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1767

.end # mpz_setbit


.sub 'mpz_clrbit'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1778
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1779
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_clrbit"
    throw $P2
  __label_1: # endif
.annotate 'line', 1780
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_clrbit'
.annotate 'line', 1781
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1782

.end # mpz_clrbit


.sub 'mpz_combit'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1793
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1794
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_combit"
    throw $P2
  __label_1: # endif
.annotate 'line', 1795
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_combit'
.annotate 'line', 1796
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1797

.end # mpz_combit


.sub 'mpz_tstbit'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1808
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1809
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_tstbit"
    throw $P2
  __label_1: # endif
.annotate 'line', 1810
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tstbit'
.annotate 'line', 1811
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1812

.end # mpz_tstbit


.sub 'mpz_urandomb'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1823
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1824
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_urandomb"
    throw $P2
  __label_1: # endif
.annotate 'line', 1825
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_urandomb'
.annotate 'line', 1826
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1827

.end # mpz_urandomb


.sub 'mpz_urandomm'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1838
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1839
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_urandomm"
    throw $P2
  __label_1: # endif
.annotate 'line', 1840
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1841
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_urandomm"
    throw $P2
  __label_2: # endif
.annotate 'line', 1842
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_urandomm'
.annotate 'line', 1843
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_3, 'ptr'
    $P1($P2, __ARG_2, $P3)
# }
.annotate 'line', 1844

.end # mpz_urandomm


.sub 'mpz_rrandomb'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1855
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1856
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_rrandomb"
    throw $P2
  __label_1: # endif
.annotate 'line', 1857
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_rrandomb'
.annotate 'line', 1858
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1859

.end # mpz_rrandomb


.sub 'mpz_random'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1870
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1871
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_random"
    throw $P2
  __label_1: # endif
.annotate 'line', 1872
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_random'
.annotate 'line', 1873
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1874

.end # mpz_random


.sub 'mpz_random2'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1885
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1886
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_random2"
    throw $P2
  __label_1: # endif
.annotate 'line', 1887
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_random2'
.annotate 'line', 1888
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1889

.end # mpz_random2


.sub 'mpz_fits_ulong_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1910
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1911
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_ulong_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1912
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_ulong_p'
.annotate 'line', 1913
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1914

.end # mpz_fits_ulong_p


.sub 'mpz_fits_slong_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1917
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1918
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_slong_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1919
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_slong_p'
.annotate 'line', 1920
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1921

.end # mpz_fits_slong_p


.sub 'mpz_fits_uint_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1924
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1925
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_uint_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1926
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_uint_p'
.annotate 'line', 1927
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1928

.end # mpz_fits_uint_p


.sub 'mpz_fits_sint_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1931
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1932
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_sint_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1933
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_sint_p'
.annotate 'line', 1934
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1935

.end # mpz_fits_sint_p


.sub 'mpz_fits_ushort_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1938
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1939
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_ushort_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1940
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_ushort_p'
.annotate 'line', 1941
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1942

.end # mpz_fits_ushort_p


.sub 'mpz_fits_sshort_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1945
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1946
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_sshort_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1947
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_sshort_p'
.annotate 'line', 1948
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1949

.end # mpz_fits_sshort_p


.sub 'mpz_sizeinbase'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1960
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1961
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_sizeinbase"
    throw $P2
  __label_1: # endif
.annotate 'line', 1962
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sizeinbase'
.annotate 'line', 1963
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1964

.end # mpz_sizeinbase


.sub 'mpz_array_init'
        .param pmc __ARG_1
        .param int __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1977
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1978
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for integer_array in mpz_array_init"
    throw $P2
  __label_1: # endif
.annotate 'line', 1979
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_array_init'
.annotate 'line', 1980
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1981

.end # mpz_array_init


.sub 'mpz_getlimbn'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1992
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1993
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_getlimbn"
    throw $P2
  __label_1: # endif
.annotate 'line', 1994
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_getlimbn'
.annotate 'line', 1995
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1996

.end # mpz_getlimbn


.sub 'mpz_size'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2007
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2008
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_size"
    throw $P2
  __label_1: # endif
.annotate 'line', 2009
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_size'
.annotate 'line', 2010
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2011

.end # mpz_size

# End generated code
