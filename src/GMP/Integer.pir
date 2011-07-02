# THIS IS A GENERATED FILE! DO NOT EDIT!
# Begin generated code

.namespace [ ]

.sub 'load' :anon :load
# Body
# {
# predefined load_bytecode
.annotate 'file', 'src/GMP/Integer.winxed'
.annotate 'line', 4
    load_bytecode 'GMP/raw.pbc'
# predefined load_bytecode
.annotate 'line', 5
    load_bytecode 'GMP/Common.pbc'
# }
.annotate 'line', 6

.end # load

.namespace [ 'GMP'; 'Integer' ]

.sub 'Integer' :method
        .param pmc __ARG_1 :optional
        .param int __ARG_2 :opt_flag
.const 'Sub' WSubId_1 = "WSubId_1"
# Body
# {
.annotate 'line', 13
    get_hll_global $P3, [ 'GMP'; 'Common' ] , 'gmpz_t'
.annotate 'line', 14
# var t: $P1
    $P1 = $P3()
.annotate 'line', 15
# var ptr: $P2
    $P8 = $P1.'alloc'()
    setattribute self, 'ptr', $P8
    set $P2, $P8
.annotate 'line', 17
    unless __ARG_2 goto __label_1
# {
.annotate 'line', 18
    isa $I1, __ARG_1, 'String'
    unless $I1 goto __label_3
# {
.annotate 'line', 19
    get_hll_global $P4, [ 'GMP'; 'Raw' ] , '__gmpz_init'
.annotate 'line', 22
    $P4($P2)
.annotate 'line', 23
# predefined string
    set $S1, __ARG_1
    WSubId_1(self, $S1, 10)
.annotate 'line', 24
    setattribute self, 'ptr', $P2
# }
    goto __label_4
  __label_3: # else
.annotate 'line', 26
    isa $I1, __ARG_1, 'Integer'
    unless $I1 goto __label_5
# {
.annotate 'line', 27
    get_hll_global $P5, [ 'GMP'; 'Raw' ] , '__gmpz_init'
.annotate 'line', 30
    $P5($P2)
.annotate 'line', 31
# predefined string
    set $S1, __ARG_1
    WSubId_1(self, $S1, 10)
.annotate 'line', 32
    setattribute self, 'ptr', $P2
# }
    goto __label_6
  __label_5: # else
# {
# predefined Error
.annotate 'line', 35
    root_new $P7, ['parrot';'Exception']
    $P7['message'] = "incorrect type init for Integer constructor"
    throw $P7
# }
  __label_6: # endif
  __label_4: # endif
# }
    goto __label_2
  __label_1: # else
# {
.annotate 'line', 38
    get_hll_global $P6, [ 'GMP'; 'Raw' ] , '__gmpz_init'
.annotate 'line', 39
    $P6($P2)
.annotate 'line', 40
    setattribute self, 'ptr', $P2
# }
  __label_2: # endif
# }
.annotate 'line', 42

.end # Integer


.sub 'destroy' :method :vtable('destroy')
# Body
# {
.annotate 'line', 45
    getattribute $P3, self, 'ptr'
    if_null $P3, __label_1
# {
.annotate 'line', 46
# var ptr: $P1
    getattribute $P1, self, 'ptr'
.annotate 'line', 47
    null $P3
    setattribute self, 'ptr', $P3
.annotate 'line', 48
    get_hll_global $P2, [ 'GMP'; 'Raw' ] , '__gmpz_clear'
.annotate 'line', 49
    $P2($P1)
# }
  __label_1: # endif
# }
.annotate 'line', 51

.end # destroy


.sub 'get_string' :method :vtable
.const 'Sub' WSubId_2 = "WSubId_2"
# Body
# {
.annotate 'line', 54
    .tailcall WSubId_2("", 10, self)
# }
.annotate 'line', 55

.end # get_string


.sub 'get_integer' :method :vtable
.const 'Sub' WSubId_3 = "WSubId_3"
# Body
# {
.annotate 'line', 58
    .tailcall WSubId_3(self)
# }
.annotate 'line', 59

.end # get_integer

.sub Winxed_class_init :anon :load :init
    newclass $P0, [ 'GMP'; 'Integer' ]
.annotate 'line', 10
    addattribute $P0, 'ptr'
.end
.namespace [ ]

.sub 'mpz_sgn'
        .param pmc __ARG_1
.const 'Sub' WSubId_4 = "WSubId_4"
# Body
# {
.annotate 'line', 73
    isa $I3, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I2, $I3
    unless $I2 goto __label_1
# predefined Error
.annotate 'line', 74
    root_new $P1, ['parrot';'Exception']
    $P1['message'] = "incorrect type for op in mpz_sgn"
    throw $P1
  __label_1: # endif
.annotate 'line', 75
# i: $I1
    $P1 = WSubId_4(__ARG_1, 0)
    set $I1, $P1
.annotate 'line', 76
    le $I1, 0, __label_2
.annotate 'line', 77
    .return(1)
  __label_2: # endif
.annotate 'line', 78
    ge $I1, 0, __label_3
.annotate 'line', 79
    .return(-1)
  __label_3: # endif
.annotate 'line', 80
    .return(0)
# }
.annotate 'line', 81

.end # mpz_sgn


.sub 'mpz_odd_p'
        .param pmc __ARG_1
.const 'Sub' WSubId_5 = "WSubId_5"
# Body
# {
.annotate 'line', 94
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 95
    root_new $P1, ['parrot';'Exception']
    $P1['message'] = "incorrect type for op in mpz_odd_p"
    throw $P1
  __label_1: # endif
.annotate 'line', 96
    .tailcall WSubId_5(__ARG_1, 0)
# }
.annotate 'line', 97

.end # mpz_odd_p


.sub 'mpz_even_p'
        .param pmc __ARG_1
.const 'Sub' WSubId_5 = "WSubId_5"
# Body
# {
.annotate 'line', 100
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 101
    root_new $P1, ['parrot';'Exception']
    $P1['message'] = "incorrect type for op in mpz_even_p"
    throw $P1
  __label_1: # endif
.annotate 'line', 102
    $P1 = WSubId_5(__ARG_1, 0)
    isfalse $I1, $P1
    .return($I1)
# }
.annotate 'line', 103

.end # mpz_even_p


.sub 'mpz_init'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 114
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 115
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_init"
    throw $P2
  __label_1: # endif
.annotate 'line', 116
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init'
.annotate 'line', 117
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2)
# }
.annotate 'line', 118

.end # mpz_init


.sub 'mpz_init2'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 129
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 130
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_init2"
    throw $P2
  __label_1: # endif
.annotate 'line', 131
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init2'
.annotate 'line', 132
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 133

.end # mpz_init2


.sub 'mpz_clear'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 144
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 145
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_clear"
    throw $P2
  __label_1: # endif
.annotate 'line', 146
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_clear'
.annotate 'line', 147
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2)
# }
.annotate 'line', 148

.end # mpz_clear


.sub 'mpz_realloc2'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 159
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 160
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_realloc2"
    throw $P2
  __label_1: # endif
.annotate 'line', 161
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_realloc2'
.annotate 'line', 162
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 163

.end # mpz_realloc2


.sub 'mpz_set'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 180
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 181
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set"
    throw $P2
  __label_1: # endif
.annotate 'line', 182
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 183
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_set"
    throw $P2
  __label_2: # endif
.annotate 'line', 184
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set'
.annotate 'line', 185
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 186

.end # mpz_set


.sub 'mpz_set_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 189
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 190
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 191
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set_ui'
.annotate 'line', 192
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 193

.end # mpz_set_ui


.sub 'mpz_set_si'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 196
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 197
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 198
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set_si'
.annotate 'line', 199
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 200

.end # mpz_set_si


.sub 'mpz_set_d'
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 203
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 204
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 205
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set_d'
.annotate 'line', 206
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 207

.end # mpz_set_d


.sub 'mpz_set_str' :subid('WSubId_1')
        .param pmc __ARG_1
        .param string __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 218
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 219
    root_new $P3, ['parrot';'Exception']
    $P3['message'] = "incorrect type for rop in mpz_set_str"
    throw $P3
  __label_1: # endif
.annotate 'line', 220
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set_str'
.annotate 'line', 221
    get_hll_global $P2, [ 'GMP'; 'Common' ] , 'stoa'
.annotate 'line', 223
    getattribute $P3, __ARG_1, 'ptr'
    $P4 = $P2(__ARG_2)
    .tailcall $P1($P3, $P4, __ARG_3)
# }
.annotate 'line', 224

.end # mpz_set_str


.sub 'mpz_swap'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 235
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 236
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop1 in mpz_swap"
    throw $P2
  __label_1: # endif
.annotate 'line', 237
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 238
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop2 in mpz_swap"
    throw $P2
  __label_2: # endif
.annotate 'line', 239
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_swap'
.annotate 'line', 240
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 241

.end # mpz_swap


.sub 'mpz_init_set'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 258
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 259
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set"
    throw $P2
  __label_1: # endif
.annotate 'line', 260
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 261
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_init_set"
    throw $P2
  __label_2: # endif
.annotate 'line', 262
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init_set'
.annotate 'line', 263
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 264

.end # mpz_init_set


.sub 'mpz_init_set_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 267
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 268
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 269
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init_set_ui'
.annotate 'line', 270
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 271

.end # mpz_init_set_ui


.sub 'mpz_init_set_si'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 274
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 275
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 276
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init_set_si'
.annotate 'line', 277
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 278

.end # mpz_init_set_si


.sub 'mpz_init_set_d'
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 281
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 282
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 283
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init_set_d'
.annotate 'line', 284
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 285

.end # mpz_init_set_d


.sub 'mpz_init_set_str'
        .param pmc __ARG_1
        .param string __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 296
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 297
    root_new $P3, ['parrot';'Exception']
    $P3['message'] = "incorrect type for rop in mpz_init_set_str"
    throw $P3
  __label_1: # endif
.annotate 'line', 298
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init_set_str'
.annotate 'line', 299
    get_hll_global $P2, [ 'GMP'; 'Common' ] , 'stoa'
.annotate 'line', 301
    getattribute $P3, __ARG_1, 'ptr'
    $P4 = $P2(__ARG_2)
    .tailcall $P1($P3, $P4, __ARG_3)
# }
.annotate 'line', 302

.end # mpz_init_set_str


.sub 'mpz_get_ui'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 313
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 314
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 315
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_get_ui'
.annotate 'line', 316
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 317

.end # mpz_get_ui


.sub 'mpz_get_si' :subid('WSubId_3')
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 328
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 329
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 330
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_get_si'
.annotate 'line', 331
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 332

.end # mpz_get_si


.sub 'mpz_get_d'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 343
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 344
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 345
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_get_d'
.annotate 'line', 346
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 347

.end # mpz_get_d


.sub 'mpz_get_d_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 358
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 359
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_d_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 360
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_get_d_2exp'
.annotate 'line', 361
    getattribute $P2, __ARG_2, 'ptr'
    .tailcall $P1(__ARG_1, $P2)
# }
.annotate 'line', 362

.end # mpz_get_d_2exp


.sub 'mpz_get_str' :subid('WSubId_2')
        .param string __ARG_1
        .param int __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 373
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 374
    root_new $P4, ['parrot';'Exception']
    $P4['message'] = "incorrect type for op in mpz_get_str"
    throw $P4
  __label_1: # endif
.annotate 'line', 375
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_get_str'
.annotate 'line', 376
    get_hll_global $P2, [ 'GMP'; 'Common' ] , 'stoa'
.annotate 'line', 377
    get_hll_global $P3, [ 'GMP'; 'Common' ] , 'atos'
.annotate 'line', 379
    $P5 = $P2(__ARG_1)
    getattribute $P6, __ARG_3, 'ptr'
    $P4 = $P1($P5, __ARG_2, $P6)
    .tailcall $P3($P4)
# }
.annotate 'line', 380

.end # mpz_get_str


.sub 'mpz_add'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 393
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 394
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_add"
    throw $P2
  __label_1: # endif
.annotate 'line', 395
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 396
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_add"
    throw $P2
  __label_2: # endif
.annotate 'line', 397
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 398
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_add"
    throw $P2
  __label_3: # endif
.annotate 'line', 399
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_add'
.annotate 'line', 400
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 401

.end # mpz_add


.sub 'mpz_add_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 404
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 405
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_add_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 406
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 407
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_add_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 408
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_add_ui'
.annotate 'line', 409
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 410

.end # mpz_add_ui


.sub 'mpz_sub'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 425
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 426
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_sub"
    throw $P2
  __label_1: # endif
.annotate 'line', 427
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 428
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_sub"
    throw $P2
  __label_2: # endif
.annotate 'line', 429
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 430
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_sub"
    throw $P2
  __label_3: # endif
.annotate 'line', 431
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sub'
.annotate 'line', 432
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 433

.end # mpz_sub


.sub 'mpz_sub_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 436
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 437
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_sub_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 438
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 439
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_sub_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 440
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sub_ui'
.annotate 'line', 441
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 442

.end # mpz_sub_ui


.sub 'mpz_ui_sub'
        .param pmc __ARG_1
        .param int __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 445
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 446
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_ui_sub"
    throw $P2
  __label_1: # endif
.annotate 'line', 447
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 448
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_ui_sub"
    throw $P2
  __label_2: # endif
.annotate 'line', 449
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_ui_sub'
.annotate 'line', 450
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_3, 'ptr'
    $P1($P2, __ARG_2, $P3)
# }
.annotate 'line', 451

.end # mpz_ui_sub


.sub 'mpz_mul'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 466
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 467
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_mul"
    throw $P2
  __label_1: # endif
.annotate 'line', 468
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 469
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul"
    throw $P2
  __label_2: # endif
.annotate 'line', 470
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 471
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_mul"
    throw $P2
  __label_3: # endif
.annotate 'line', 472
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mul'
.annotate 'line', 473
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 474

.end # mpz_mul


.sub 'mpz_mul_si'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 477
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 478
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_mul_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 479
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 480
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul_si"
    throw $P2
  __label_2: # endif
.annotate 'line', 481
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mul_si'
.annotate 'line', 482
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 483

.end # mpz_mul_si


.sub 'mpz_mul_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 486
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 487
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_mul_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 488
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 489
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 490
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mul_ui'
.annotate 'line', 491
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 492

.end # mpz_mul_ui


.sub 'mpz_addmul'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 505
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 506
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_addmul"
    throw $P2
  __label_1: # endif
.annotate 'line', 507
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 508
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_addmul"
    throw $P2
  __label_2: # endif
.annotate 'line', 509
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 510
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_addmul"
    throw $P2
  __label_3: # endif
.annotate 'line', 511
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_addmul'
.annotate 'line', 512
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 513

.end # mpz_addmul


.sub 'mpz_addmul_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 516
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 517
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_addmul_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 518
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 519
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_addmul_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 520
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_addmul_ui'
.annotate 'line', 521
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 522

.end # mpz_addmul_ui


.sub 'mpz_submul'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 535
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 536
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_submul"
    throw $P2
  __label_1: # endif
.annotate 'line', 537
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 538
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_submul"
    throw $P2
  __label_2: # endif
.annotate 'line', 539
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 540
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_submul"
    throw $P2
  __label_3: # endif
.annotate 'line', 541
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_submul'
.annotate 'line', 542
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 543

.end # mpz_submul


.sub 'mpz_submul_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 546
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 547
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_submul_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 548
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 549
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_submul_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 550
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_submul_ui'
.annotate 'line', 551
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 552

.end # mpz_submul_ui


.sub 'mpz_mul_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 563
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 564
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_mul_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 565
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 566
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 567
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mul_2exp'
.annotate 'line', 568
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 569

.end # mpz_mul_2exp


.sub 'mpz_neg'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 580
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 581
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_neg"
    throw $P2
  __label_1: # endif
.annotate 'line', 582
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 583
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_neg"
    throw $P2
  __label_2: # endif
.annotate 'line', 584
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_neg'
.annotate 'line', 585
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 586

.end # mpz_neg


.sub 'mpz_abs'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 597
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 598
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_abs"
    throw $P2
  __label_1: # endif
.annotate 'line', 599
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 600
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_abs"
    throw $P2
  __label_2: # endif
.annotate 'line', 601
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_abs'
.annotate 'line', 602
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 603

.end # mpz_abs


.sub 'mpz_cdiv_q'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 628
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 629
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_q"
    throw $P2
  __label_1: # endif
.annotate 'line', 630
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 631
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_q"
    throw $P2
  __label_2: # endif
.annotate 'line', 632
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 633
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_cdiv_q"
    throw $P2
  __label_3: # endif
.annotate 'line', 634
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_q'
.annotate 'line', 635
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 636

.end # mpz_cdiv_q


.sub 'mpz_cdiv_r'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 639
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 640
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_r"
    throw $P2
  __label_1: # endif
.annotate 'line', 641
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 642
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_r"
    throw $P2
  __label_2: # endif
.annotate 'line', 643
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 644
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_cdiv_r"
    throw $P2
  __label_3: # endif
.annotate 'line', 645
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_r'
.annotate 'line', 646
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 647

.end # mpz_cdiv_r


.sub 'mpz_cdiv_qr'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 650
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 651
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_qr"
    throw $P2
  __label_1: # endif
.annotate 'line', 652
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 653
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_qr"
    throw $P2
  __label_2: # endif
.annotate 'line', 654
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 655
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_qr"
    throw $P2
  __label_3: # endif
.annotate 'line', 656
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 657
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_cdiv_qr"
    throw $P2
  __label_4: # endif
.annotate 'line', 658
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_qr'
.annotate 'line', 659
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 660

.end # mpz_cdiv_qr


.sub 'mpz_cdiv_q_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 663
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 664
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_q_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 665
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 666
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_q_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 667
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_q_ui'
.annotate 'line', 668
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 669

.end # mpz_cdiv_q_ui


.sub 'mpz_cdiv_r_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 672
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 673
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_r_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 674
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 675
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_r_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 676
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_r_ui'
.annotate 'line', 677
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 678

.end # mpz_cdiv_r_ui


.sub 'mpz_cdiv_qr_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 681
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 682
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_qr_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 683
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 684
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_qr_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 685
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 686
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_qr_ui"
    throw $P2
  __label_3: # endif
.annotate 'line', 687
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_qr_ui'
.annotate 'line', 688
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 689

.end # mpz_cdiv_qr_ui


.sub 'mpz_cdiv_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 692
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 693
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 694
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_ui'
.annotate 'line', 695
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 696

.end # mpz_cdiv_ui


.sub 'mpz_cdiv_q_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 699
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 700
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_q_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 701
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 702
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_q_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 703
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_q_2exp'
.annotate 'line', 704
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 705

.end # mpz_cdiv_q_2exp


.sub 'mpz_cdiv_r_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 708
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 709
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_r_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 710
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 711
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_r_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 712
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_r_2exp'
.annotate 'line', 713
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 714

.end # mpz_cdiv_r_2exp


.sub 'mpz_fdiv_q'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 739
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 740
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_q"
    throw $P2
  __label_1: # endif
.annotate 'line', 741
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 742
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_q"
    throw $P2
  __label_2: # endif
.annotate 'line', 743
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 744
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_fdiv_q"
    throw $P2
  __label_3: # endif
.annotate 'line', 745
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_q'
.annotate 'line', 746
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 747

.end # mpz_fdiv_q


.sub 'mpz_fdiv_r'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 750
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 751
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_r"
    throw $P2
  __label_1: # endif
.annotate 'line', 752
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 753
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_r"
    throw $P2
  __label_2: # endif
.annotate 'line', 754
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 755
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_fdiv_r"
    throw $P2
  __label_3: # endif
.annotate 'line', 756
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_r'
.annotate 'line', 757
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 758

.end # mpz_fdiv_r


.sub 'mpz_fdiv_qr'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 761
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 762
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_qr"
    throw $P2
  __label_1: # endif
.annotate 'line', 763
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 764
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_qr"
    throw $P2
  __label_2: # endif
.annotate 'line', 765
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 766
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_qr"
    throw $P2
  __label_3: # endif
.annotate 'line', 767
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 768
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_fdiv_qr"
    throw $P2
  __label_4: # endif
.annotate 'line', 769
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_qr'
.annotate 'line', 770
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 771

.end # mpz_fdiv_qr


.sub 'mpz_fdiv_q_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 774
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 775
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_q_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 776
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 777
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_q_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 778
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_q_ui'
.annotate 'line', 779
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 780

.end # mpz_fdiv_q_ui


.sub 'mpz_fdiv_r_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 783
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 784
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_r_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 785
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 786
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_r_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 787
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_r_ui'
.annotate 'line', 788
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 789

.end # mpz_fdiv_r_ui


.sub 'mpz_fdiv_qr_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 792
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 793
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_qr_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 794
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 795
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_qr_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 796
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 797
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_qr_ui"
    throw $P2
  __label_3: # endif
.annotate 'line', 798
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_qr_ui'
.annotate 'line', 799
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 800

.end # mpz_fdiv_qr_ui


.sub 'mpz_fdiv_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 803
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 804
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 805
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_ui'
.annotate 'line', 806
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 807

.end # mpz_fdiv_ui


.sub 'mpz_fdiv_q_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 810
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 811
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_q_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 812
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 813
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_q_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 814
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_q_2exp'
.annotate 'line', 815
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 816

.end # mpz_fdiv_q_2exp


.sub 'mpz_fdiv_r_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 819
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 820
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_r_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 821
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 822
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_r_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 823
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_r_2exp'
.annotate 'line', 824
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 825

.end # mpz_fdiv_r_2exp


.sub 'mpz_tdiv_q'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 854
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 855
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_q"
    throw $P2
  __label_1: # endif
.annotate 'line', 856
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 857
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_q"
    throw $P2
  __label_2: # endif
.annotate 'line', 858
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 859
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_tdiv_q"
    throw $P2
  __label_3: # endif
.annotate 'line', 860
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_q'
.annotate 'line', 861
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 862

.end # mpz_tdiv_q


.sub 'mpz_tdiv_r'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 865
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 866
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_r"
    throw $P2
  __label_1: # endif
.annotate 'line', 867
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 868
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_r"
    throw $P2
  __label_2: # endif
.annotate 'line', 869
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 870
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_tdiv_r"
    throw $P2
  __label_3: # endif
.annotate 'line', 871
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_r'
.annotate 'line', 872
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 873

.end # mpz_tdiv_r


.sub 'mpz_tdiv_qr'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 876
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 877
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_qr"
    throw $P2
  __label_1: # endif
.annotate 'line', 878
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 879
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_qr"
    throw $P2
  __label_2: # endif
.annotate 'line', 880
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 881
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_qr"
    throw $P2
  __label_3: # endif
.annotate 'line', 882
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 883
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_tdiv_qr"
    throw $P2
  __label_4: # endif
.annotate 'line', 884
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_qr'
.annotate 'line', 885
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 886

.end # mpz_tdiv_qr


.sub 'mpz_tdiv_q_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 889
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 890
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_q_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 891
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 892
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_q_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 893
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_q_ui'
.annotate 'line', 894
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 895

.end # mpz_tdiv_q_ui


.sub 'mpz_tdiv_r_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 898
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 899
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_r_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 900
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 901
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_r_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 902
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_r_ui'
.annotate 'line', 903
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 904

.end # mpz_tdiv_r_ui


.sub 'mpz_tdiv_qr_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 907
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 908
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_qr_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 909
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 910
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_qr_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 911
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 912
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_qr_ui"
    throw $P2
  __label_3: # endif
.annotate 'line', 913
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_qr_ui'
.annotate 'line', 914
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 915

.end # mpz_tdiv_qr_ui


.sub 'mpz_tdiv_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 918
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 919
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 920
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_ui'
.annotate 'line', 921
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 922

.end # mpz_tdiv_ui


.sub 'mpz_tdiv_q_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 925
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 926
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_q_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 927
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 928
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_q_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 929
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_q_2exp'
.annotate 'line', 930
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 931

.end # mpz_tdiv_q_2exp


.sub 'mpz_tdiv_r_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 934
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 935
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_r_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 936
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 937
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_r_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 938
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_r_2exp'
.annotate 'line', 939
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 940

.end # mpz_tdiv_r_2exp


.sub 'mpz_mod'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 953
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 954
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_mod"
    throw $P2
  __label_1: # endif
.annotate 'line', 955
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 956
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_mod"
    throw $P2
  __label_2: # endif
.annotate 'line', 957
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 958
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_mod"
    throw $P2
  __label_3: # endif
.annotate 'line', 959
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mod'
.annotate 'line', 960
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 961

.end # mpz_mod


.sub 'mpz_mod_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 964
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 965
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_mod_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 966
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 967
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_mod_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 968
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_r_ui'
.annotate 'line', 969
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 970

.end # mpz_mod_ui


.sub 'mpz_divexact'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 983
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 984
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_divexact"
    throw $P2
  __label_1: # endif
.annotate 'line', 985
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 986
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divexact"
    throw $P2
  __label_2: # endif
.annotate 'line', 987
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 988
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_divexact"
    throw $P2
  __label_3: # endif
.annotate 'line', 989
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divexact'
.annotate 'line', 990
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 991

.end # mpz_divexact


.sub 'mpz_divexact_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 994
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 995
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_divexact_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 996
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 997
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divexact_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 998
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divexact_ui'
.annotate 'line', 999
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1000

.end # mpz_divexact_ui


.sub 'mpz_divisible_p'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1015
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1016
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divisible_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1017
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1018
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_divisible_p"
    throw $P2
  __label_2: # endif
.annotate 'line', 1019
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divisible_p'
.annotate 'line', 1020
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1021

.end # mpz_divisible_p


.sub 'mpz_divisible_ui_p'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1024
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1025
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divisible_ui_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1026
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divisible_ui_p'
.annotate 'line', 1027
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1028

.end # mpz_divisible_ui_p


.sub 'mpz_divisible_2exp_p'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1031
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1032
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divisible_2exp_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1033
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divisible_2exp_p'
.annotate 'line', 1034
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1035

.end # mpz_divisible_2exp_p


.sub 'mpz_congruent_p'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1050
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1051
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_congruent_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1052
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1053
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for c in mpz_congruent_p"
    throw $P2
  __label_2: # endif
.annotate 'line', 1054
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1055
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_congruent_p"
    throw $P2
  __label_3: # endif
.annotate 'line', 1056
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_congruent_p'
.annotate 'line', 1057
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4)
# }
.annotate 'line', 1058

.end # mpz_congruent_p


.sub 'mpz_congruent_ui_p'
        .param pmc __ARG_1
        .param int __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1061
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1062
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_congruent_ui_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1063
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_congruent_ui_p'
.annotate 'line', 1064
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1065

.end # mpz_congruent_ui_p


.sub 'mpz_congruent_2exp_p'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1068
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1069
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_congruent_2exp_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1070
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1071
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for c in mpz_congruent_2exp_p"
    throw $P2
  __label_2: # endif
.annotate 'line', 1072
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_congruent_2exp_p'
.annotate 'line', 1073
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1074

.end # mpz_congruent_2exp_p


.sub 'mpz_powm'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 1087
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1088
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_powm"
    throw $P2
  __label_1: # endif
.annotate 'line', 1089
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1090
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_powm"
    throw $P2
  __label_2: # endif
.annotate 'line', 1091
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1092
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for exp in mpz_powm"
    throw $P2
  __label_3: # endif
.annotate 'line', 1093
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 1094
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for mod in mpz_powm"
    throw $P2
  __label_4: # endif
.annotate 'line', 1095
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_powm'
.annotate 'line', 1096
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 1097

.end # mpz_powm


.sub 'mpz_powm_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 1100
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1101
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_powm_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1102
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1103
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_powm_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1104
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1105
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for mod in mpz_powm_ui"
    throw $P2
  __label_3: # endif
.annotate 'line', 1106
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_powm_ui'
.annotate 'line', 1107
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_4, 'ptr'
    $P1($P2, $P3, __ARG_3, $P4)
# }
.annotate 'line', 1108

.end # mpz_powm_ui


.sub 'mpz_powm_sec'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 1119
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1120
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_powm_sec"
    throw $P2
  __label_1: # endif
.annotate 'line', 1121
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1122
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_powm_sec"
    throw $P2
  __label_2: # endif
.annotate 'line', 1123
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1124
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for exp in mpz_powm_sec"
    throw $P2
  __label_3: # endif
.annotate 'line', 1125
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 1126
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for mod in mpz_powm_sec"
    throw $P2
  __label_4: # endif
.annotate 'line', 1127
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_powm_sec'
.annotate 'line', 1128
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 1129

.end # mpz_powm_sec


.sub 'mpz_pow_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1142
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1143
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_pow_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1144
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1145
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_pow_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1146
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_pow_ui'
.annotate 'line', 1147
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1148

.end # mpz_pow_ui


.sub 'mpz_ui_pow_ui'
        .param pmc __ARG_1
        .param int __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1151
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1152
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_ui_pow_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1153
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_ui_pow_ui'
.annotate 'line', 1154
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1155

.end # mpz_ui_pow_ui


.sub 'mpz_root'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1166
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1167
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_root"
    throw $P2
  __label_1: # endif
.annotate 'line', 1168
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1169
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_root"
    throw $P2
  __label_2: # endif
.annotate 'line', 1170
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_root'
.annotate 'line', 1171
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1172

.end # mpz_root


.sub 'mpz_rootrem'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 1183
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1184
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for root in mpz_rootrem"
    throw $P2
  __label_1: # endif
.annotate 'line', 1185
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1186
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rem in mpz_rootrem"
    throw $P2
  __label_2: # endif
.annotate 'line', 1187
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1188
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for u in mpz_rootrem"
    throw $P2
  __label_3: # endif
.annotate 'line', 1189
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_rootrem'
.annotate 'line', 1190
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 1191

.end # mpz_rootrem


.sub 'mpz_sqrt'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1202
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1203
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_sqrt"
    throw $P2
  __label_1: # endif
.annotate 'line', 1204
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1205
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_sqrt"
    throw $P2
  __label_2: # endif
.annotate 'line', 1206
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sqrt'
.annotate 'line', 1207
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 1208

.end # mpz_sqrt


.sub 'mpz_sqrtrem'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1219
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1220
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop1 in mpz_sqrtrem"
    throw $P2
  __label_1: # endif
.annotate 'line', 1221
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1222
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop2 in mpz_sqrtrem"
    throw $P2
  __label_2: # endif
.annotate 'line', 1223
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1224
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_sqrtrem"
    throw $P2
  __label_3: # endif
.annotate 'line', 1225
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sqrtrem'
.annotate 'line', 1226
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1227

.end # mpz_sqrtrem


.sub 'mpz_perfect_power_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1238
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1239
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_perfect_power_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1240
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_perfect_power_p'
.annotate 'line', 1241
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1242

.end # mpz_perfect_power_p


.sub 'mpz_perfect_square_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1253
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1254
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_perfect_square_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1255
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_perfect_square_p'
.annotate 'line', 1256
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1257

.end # mpz_perfect_square_p


.sub 'mpz_probab_prime_p'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1268
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1269
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_probab_prime_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1270
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_probab_prime_p'
.annotate 'line', 1271
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1272

.end # mpz_probab_prime_p


.sub 'mpz_nextprime'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1283
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1284
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_nextprime"
    throw $P2
  __label_1: # endif
.annotate 'line', 1285
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1286
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_nextprime"
    throw $P2
  __label_2: # endif
.annotate 'line', 1287
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_nextprime'
.annotate 'line', 1288
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 1289

.end # mpz_nextprime


.sub 'mpz_gcd'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1300
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1301
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_gcd"
    throw $P2
  __label_1: # endif
.annotate 'line', 1302
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1303
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_gcd"
    throw $P2
  __label_2: # endif
.annotate 'line', 1304
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1305
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_gcd"
    throw $P2
  __label_3: # endif
.annotate 'line', 1306
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_gcd'
.annotate 'line', 1307
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1308

.end # mpz_gcd


.sub 'mpz_gcd_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1319
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1320
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_gcd_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1321
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1322
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_gcd_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1323
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_gcd_ui'
.annotate 'line', 1324
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1325

.end # mpz_gcd_ui


.sub 'mpz_gcdext'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
        .param pmc __ARG_5
# Body
# {
.annotate 'line', 1336
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1337
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for g in mpz_gcdext"
    throw $P2
  __label_1: # endif
.annotate 'line', 1338
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1339
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for s in mpz_gcdext"
    throw $P2
  __label_2: # endif
.annotate 'line', 1340
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1341
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for t in mpz_gcdext"
    throw $P2
  __label_3: # endif
.annotate 'line', 1342
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 1343
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_gcdext"
    throw $P2
  __label_4: # endif
.annotate 'line', 1344
    isa $I2, __ARG_5, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_5
# predefined Error
.annotate 'line', 1345
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_gcdext"
    throw $P2
  __label_5: # endif
.annotate 'line', 1346
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_gcdext'
.annotate 'line', 1347
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    getattribute $P6, __ARG_5, 'ptr'
    $P1($P2, $P3, $P4, $P5, $P6)
# }
.annotate 'line', 1348

.end # mpz_gcdext


.sub 'mpz_lcm'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1361
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1362
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_lcm"
    throw $P2
  __label_1: # endif
.annotate 'line', 1363
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1364
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_lcm"
    throw $P2
  __label_2: # endif
.annotate 'line', 1365
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1366
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_lcm"
    throw $P2
  __label_3: # endif
.annotate 'line', 1367
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_lcm'
.annotate 'line', 1368
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1369

.end # mpz_lcm


.sub 'mpz_lcm_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1372
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1373
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_lcm_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1374
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1375
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_lcm_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1376
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_lcm_ui'
.annotate 'line', 1377
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1378

.end # mpz_lcm_ui


.sub 'mpz_invert'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1389
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1390
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_invert"
    throw $P2
  __label_1: # endif
.annotate 'line', 1391
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1392
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_invert"
    throw $P2
  __label_2: # endif
.annotate 'line', 1393
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1394
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_invert"
    throw $P2
  __label_3: # endif
.annotate 'line', 1395
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_invert'
.annotate 'line', 1396
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4)
# }
.annotate 'line', 1397

.end # mpz_invert


.sub 'mpz_jacobi'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1408
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1409
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_jacobi"
    throw $P2
  __label_1: # endif
.annotate 'line', 1410
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1411
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_jacobi"
    throw $P2
  __label_2: # endif
.annotate 'line', 1412
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_jacobi'
.annotate 'line', 1413
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1414

.end # mpz_jacobi


.sub 'mpz_legendre'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1425
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1426
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_legendre"
    throw $P2
  __label_1: # endif
.annotate 'line', 1427
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1428
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for p in mpz_legendre"
    throw $P2
  __label_2: # endif
.annotate 'line', 1429
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_jacobi'
.annotate 'line', 1430
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1431

.end # mpz_legendre


.sub 'mpz_kronecker'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1450
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1451
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_kronecker"
    throw $P2
  __label_1: # endif
.annotate 'line', 1452
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1453
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_kronecker"
    throw $P2
  __label_2: # endif
.annotate 'line', 1454
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_jacobi'
.annotate 'line', 1455
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1456

.end # mpz_kronecker


.sub 'mpz_kronecker_si'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1459
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1460
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_kronecker_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 1461
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_kronecker_si'
.annotate 'line', 1462
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1463

.end # mpz_kronecker_si


.sub 'mpz_kronecker_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1466
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1467
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_kronecker_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1468
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_kronecker_ui'
.annotate 'line', 1469
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1470

.end # mpz_kronecker_ui


.sub 'mpz_si_kronecker'
        .param int __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1473
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1474
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_si_kronecker"
    throw $P2
  __label_1: # endif
.annotate 'line', 1475
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_si_kronecker'
.annotate 'line', 1476
    getattribute $P2, __ARG_2, 'ptr'
    .tailcall $P1(__ARG_1, $P2)
# }
.annotate 'line', 1477

.end # mpz_si_kronecker


.sub 'mpz_ui_kronecker'
        .param int __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1480
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1481
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_ui_kronecker"
    throw $P2
  __label_1: # endif
.annotate 'line', 1482
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_ui_kronecker'
.annotate 'line', 1483
    getattribute $P2, __ARG_2, 'ptr'
    .tailcall $P1(__ARG_1, $P2)
# }
.annotate 'line', 1484

.end # mpz_ui_kronecker


.sub 'mpz_remove'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1495
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1496
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_remove"
    throw $P2
  __label_1: # endif
.annotate 'line', 1497
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1498
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_remove"
    throw $P2
  __label_2: # endif
.annotate 'line', 1499
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1500
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for f in mpz_remove"
    throw $P2
  __label_3: # endif
.annotate 'line', 1501
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_remove'
.annotate 'line', 1502
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4)
# }
.annotate 'line', 1503

.end # mpz_remove


.sub 'mpz_fac_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1514
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1515
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_fac_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1516
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fac_ui'
.annotate 'line', 1517
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1518

.end # mpz_fac_ui


.sub 'mpz_bin_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1531
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1532
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_bin_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1533
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1534
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_bin_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1535
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_bin_ui'
.annotate 'line', 1536
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1537

.end # mpz_bin_ui


.sub 'mpz_bin_uiui'
        .param pmc __ARG_1
        .param int __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1540
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1541
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_bin_uiui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1542
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_bin_uiui'
.annotate 'line', 1543
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1544

.end # mpz_bin_uiui


.sub 'mpz_fib_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1557
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1558
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for fn in mpz_fib_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1559
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fib_ui'
.annotate 'line', 1560
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1561

.end # mpz_fib_ui


.sub 'mpz_fib2_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1564
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1565
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for fn in mpz_fib2_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1566
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1567
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for fnsub1 in mpz_fib2_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1568
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fib2_ui'
.annotate 'line', 1569
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1570

.end # mpz_fib2_ui


.sub 'mpz_lucnum_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1583
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1584
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for ln in mpz_lucnum_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1585
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_lucnum_ui'
.annotate 'line', 1586
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1587

.end # mpz_lucnum_ui


.sub 'mpz_lucnum2_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1590
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1591
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for ln in mpz_lucnum2_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1592
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1593
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for lnsub1 in mpz_lucnum2_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1594
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_lucnum2_ui'
.annotate 'line', 1595
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1596

.end # mpz_lucnum2_ui


.sub 'mpz_cmp'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1613
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1614
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmp"
    throw $P2
  __label_1: # endif
.annotate 'line', 1615
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1616
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_cmp"
    throw $P2
  __label_2: # endif
.annotate 'line', 1617
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmp'
.annotate 'line', 1618
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1619

.end # mpz_cmp


.sub 'mpz_cmp_d'
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 1622
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1623
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmp_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 1624
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmp_d'
.annotate 'line', 1625
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1626

.end # mpz_cmp_d


.sub 'mpz_cmp_si'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1629
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1630
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmp_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 1631
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmp_si'
.annotate 'line', 1632
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1633

.end # mpz_cmp_si


.sub 'mpz_cmp_ui' :subid('WSubId_4')
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1636
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1637
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmp_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1638
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmp_ui'
.annotate 'line', 1639
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1640

.end # mpz_cmp_ui


.sub 'mpz_cmpabs'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1655
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1656
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmpabs"
    throw $P2
  __label_1: # endif
.annotate 'line', 1657
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1658
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_cmpabs"
    throw $P2
  __label_2: # endif
.annotate 'line', 1659
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmpabs'
.annotate 'line', 1660
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1661

.end # mpz_cmpabs


.sub 'mpz_cmpabs_d'
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 1664
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1665
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmpabs_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 1666
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmpabs_d'
.annotate 'line', 1667
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1668

.end # mpz_cmpabs_d


.sub 'mpz_cmpabs_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1671
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1672
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmpabs_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1673
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmpabs_ui'
.annotate 'line', 1674
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1675

.end # mpz_cmpabs_ui


.sub 'mpz_and'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1686
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1687
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_and"
    throw $P2
  __label_1: # endif
.annotate 'line', 1688
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1689
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_and"
    throw $P2
  __label_2: # endif
.annotate 'line', 1690
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1691
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_and"
    throw $P2
  __label_3: # endif
.annotate 'line', 1692
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_and'
.annotate 'line', 1693
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1694

.end # mpz_and


.sub 'mpz_ior'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1705
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1706
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_ior"
    throw $P2
  __label_1: # endif
.annotate 'line', 1707
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1708
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_ior"
    throw $P2
  __label_2: # endif
.annotate 'line', 1709
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1710
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_ior"
    throw $P2
  __label_3: # endif
.annotate 'line', 1711
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_ior'
.annotate 'line', 1712
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1713

.end # mpz_ior


.sub 'mpz_xor'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1724
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1725
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_xor"
    throw $P2
  __label_1: # endif
.annotate 'line', 1726
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1727
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_xor"
    throw $P2
  __label_2: # endif
.annotate 'line', 1728
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1729
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_xor"
    throw $P2
  __label_3: # endif
.annotate 'line', 1730
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_xor'
.annotate 'line', 1731
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1732

.end # mpz_xor


.sub 'mpz_com'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1743
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1744
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_com"
    throw $P2
  __label_1: # endif
.annotate 'line', 1745
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1746
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_com"
    throw $P2
  __label_2: # endif
.annotate 'line', 1747
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_com'
.annotate 'line', 1748
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 1749

.end # mpz_com


.sub 'mpz_popcount'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1760
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1761
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_popcount"
    throw $P2
  __label_1: # endif
.annotate 'line', 1762
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_popcount'
.annotate 'line', 1763
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1764

.end # mpz_popcount


.sub 'mpz_hamdist'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1775
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1776
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_hamdist"
    throw $P2
  __label_1: # endif
.annotate 'line', 1777
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1778
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_hamdist"
    throw $P2
  __label_2: # endif
.annotate 'line', 1779
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_hamdist'
.annotate 'line', 1780
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1781

.end # mpz_hamdist


.sub 'mpz_scan0'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1794
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1795
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_scan0"
    throw $P2
  __label_1: # endif
.annotate 'line', 1796
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_scan0'
.annotate 'line', 1797
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1798

.end # mpz_scan0


.sub 'mpz_scan1'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1801
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1802
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_scan1"
    throw $P2
  __label_1: # endif
.annotate 'line', 1803
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_scan1'
.annotate 'line', 1804
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1805

.end # mpz_scan1


.sub 'mpz_setbit'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1816
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1817
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_setbit"
    throw $P2
  __label_1: # endif
.annotate 'line', 1818
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_setbit'
.annotate 'line', 1819
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1820

.end # mpz_setbit


.sub 'mpz_clrbit'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1831
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1832
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_clrbit"
    throw $P2
  __label_1: # endif
.annotate 'line', 1833
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_clrbit'
.annotate 'line', 1834
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1835

.end # mpz_clrbit


.sub 'mpz_combit'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1846
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1847
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_combit"
    throw $P2
  __label_1: # endif
.annotate 'line', 1848
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_combit'
.annotate 'line', 1849
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1850

.end # mpz_combit


.sub 'mpz_tstbit' :subid('WSubId_5')
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1861
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1862
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_tstbit"
    throw $P2
  __label_1: # endif
.annotate 'line', 1863
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tstbit'
.annotate 'line', 1864
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1865

.end # mpz_tstbit


.sub 'mpz_urandomb'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1876
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1877
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_urandomb"
    throw $P2
  __label_1: # endif
.annotate 'line', 1878
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_urandomb'
.annotate 'line', 1879
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1880

.end # mpz_urandomb


.sub 'mpz_urandomm'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1891
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1892
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_urandomm"
    throw $P2
  __label_1: # endif
.annotate 'line', 1893
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1894
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_urandomm"
    throw $P2
  __label_2: # endif
.annotate 'line', 1895
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_urandomm'
.annotate 'line', 1896
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_3, 'ptr'
    $P1($P2, __ARG_2, $P3)
# }
.annotate 'line', 1897

.end # mpz_urandomm


.sub 'mpz_rrandomb'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1908
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1909
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_rrandomb"
    throw $P2
  __label_1: # endif
.annotate 'line', 1910
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_rrandomb'
.annotate 'line', 1911
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1912

.end # mpz_rrandomb


.sub 'mpz_fits_ulong_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1933
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1934
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_ulong_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1935
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_ulong_p'
.annotate 'line', 1936
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1937

.end # mpz_fits_ulong_p


.sub 'mpz_fits_slong_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1940
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1941
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_slong_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1942
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_slong_p'
.annotate 'line', 1943
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1944

.end # mpz_fits_slong_p


.sub 'mpz_fits_uint_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1947
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1948
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_uint_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1949
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_uint_p'
.annotate 'line', 1950
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1951

.end # mpz_fits_uint_p


.sub 'mpz_fits_sint_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1954
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1955
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_sint_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1956
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_sint_p'
.annotate 'line', 1957
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1958

.end # mpz_fits_sint_p


.sub 'mpz_fits_ushort_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1961
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1962
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_ushort_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1963
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_ushort_p'
.annotate 'line', 1964
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1965

.end # mpz_fits_ushort_p


.sub 'mpz_fits_sshort_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1968
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1969
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_sshort_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1970
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_sshort_p'
.annotate 'line', 1971
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1972

.end # mpz_fits_sshort_p


.sub 'mpz_sizeinbase'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1983
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1984
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_sizeinbase"
    throw $P2
  __label_1: # endif
.annotate 'line', 1985
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sizeinbase'
.annotate 'line', 1986
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1987

.end # mpz_sizeinbase


.sub 'mpz_getlimbn'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1998
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1999
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_getlimbn"
    throw $P2
  __label_1: # endif
.annotate 'line', 2000
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_getlimbn'
.annotate 'line', 2001
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 2002

.end # mpz_getlimbn


.sub 'mpz_size'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2013
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2014
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_size"
    throw $P2
  __label_1: # endif
.annotate 'line', 2015
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_size'
.annotate 'line', 2016
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2017

.end # mpz_size

# End generated code
