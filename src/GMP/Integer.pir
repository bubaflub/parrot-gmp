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

.sub 'mpz_init'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 73
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 74
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_init"
    throw $P2
  __label_1: # endif
.annotate 'line', 75
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init'
.annotate 'line', 77
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2)
# }
.annotate 'line', 78

.end # mpz_init


.sub 'mpz_init2'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 89
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 90
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_init2"
    throw $P2
  __label_1: # endif
.annotate 'line', 91
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init2'
.annotate 'line', 93
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 94

.end # mpz_init2


.sub 'mpz_clear'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 105
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 106
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_clear"
    throw $P2
  __label_1: # endif
.annotate 'line', 107
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_clear'
.annotate 'line', 109
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2)
# }
.annotate 'line', 110

.end # mpz_clear


.sub 'mpz_realloc2'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 121
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 122
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_realloc2"
    throw $P2
  __label_1: # endif
.annotate 'line', 123
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_realloc2'
.annotate 'line', 125
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 126

.end # mpz_realloc2


.sub 'mpz_set'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 143
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 144
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set"
    throw $P2
  __label_1: # endif
.annotate 'line', 145
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 146
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_set"
    throw $P2
  __label_2: # endif
.annotate 'line', 147
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set'
.annotate 'line', 149
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 150

.end # mpz_set


.sub 'mpz_set_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 153
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 154
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 155
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set_ui'
.annotate 'line', 157
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 158

.end # mpz_set_ui


.sub 'mpz_set_si'
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
    $P2['message'] = "incorrect type for rop in mpz_set_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 163
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set_si'
.annotate 'line', 165
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 166

.end # mpz_set_si


.sub 'mpz_set_d'
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 169
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 170
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 171
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set_d'
.annotate 'line', 173
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 174

.end # mpz_set_d


.sub 'mpz_set_str' :subid('WSubId_1')
        .param pmc __ARG_1
        .param string __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 185
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 186
    root_new $P3, ['parrot';'Exception']
    $P3['message'] = "incorrect type for rop in mpz_set_str"
    throw $P3
  __label_1: # endif
.annotate 'line', 187
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set_str'
.annotate 'line', 188
    get_hll_global $P2, [ 'GMP'; 'Common' ] , 'stoa'
.annotate 'line', 190
    getattribute $P3, __ARG_1, 'ptr'
    $P4 = $P2(__ARG_2)
    .tailcall $P1($P3, $P4, __ARG_3)
# }
.annotate 'line', 191

.end # mpz_set_str


.sub 'mpz_swap'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 202
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 203
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop1 in mpz_swap"
    throw $P2
  __label_1: # endif
.annotate 'line', 204
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 205
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop2 in mpz_swap"
    throw $P2
  __label_2: # endif
.annotate 'line', 206
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_swap'
.annotate 'line', 208
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 209

.end # mpz_swap


.sub 'mpz_init_set'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 226
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 227
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set"
    throw $P2
  __label_1: # endif
.annotate 'line', 228
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 229
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_init_set"
    throw $P2
  __label_2: # endif
.annotate 'line', 230
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init_set'
.annotate 'line', 232
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 233

.end # mpz_init_set


.sub 'mpz_init_set_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 236
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 237
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 238
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
.annotate 'line', 248
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 249

.end # mpz_init_set_si


.sub 'mpz_init_set_d'
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 252
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 253
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 254
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init_set_d'
.annotate 'line', 256
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 257

.end # mpz_init_set_d


.sub 'mpz_init_set_str'
        .param pmc __ARG_1
        .param string __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 268
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 269
    root_new $P3, ['parrot';'Exception']
    $P3['message'] = "incorrect type for rop in mpz_init_set_str"
    throw $P3
  __label_1: # endif
.annotate 'line', 270
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init_set_str'
.annotate 'line', 271
    get_hll_global $P2, [ 'GMP'; 'Common' ] , 'stoa'
.annotate 'line', 273
    getattribute $P3, __ARG_1, 'ptr'
    $P4 = $P2(__ARG_2)
    .tailcall $P1($P3, $P4, __ARG_3)
# }
.annotate 'line', 274

.end # mpz_init_set_str


.sub 'mpz_get_ui'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 285
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 286
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 287
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_get_ui'
.annotate 'line', 289
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 290

.end # mpz_get_ui


.sub 'mpz_get_si' :subid('WSubId_3')
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 301
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 302
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 303
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_get_si'
.annotate 'line', 305
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 306

.end # mpz_get_si


.sub 'mpz_get_d'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 317
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 318
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 319
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_get_d'
.annotate 'line', 321
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 322

.end # mpz_get_d


.sub 'mpz_get_d_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 333
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 334
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_d_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 335
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_get_d_2exp'
.annotate 'line', 337
    getattribute $P2, __ARG_2, 'ptr'
    .tailcall $P1(__ARG_1, $P2)
# }
.annotate 'line', 338

.end # mpz_get_d_2exp


.sub 'mpz_get_str' :subid('WSubId_2')
        .param string __ARG_1
        .param int __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 349
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 350
    root_new $P4, ['parrot';'Exception']
    $P4['message'] = "incorrect type for op in mpz_get_str"
    throw $P4
  __label_1: # endif
.annotate 'line', 351
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_get_str'
.annotate 'line', 352
    get_hll_global $P2, [ 'GMP'; 'Common' ] , 'stoa'
.annotate 'line', 353
    get_hll_global $P3, [ 'GMP'; 'Common' ] , 'atos'
.annotate 'line', 355
    $P5 = $P2(__ARG_1)
    getattribute $P6, __ARG_3, 'ptr'
    $P4 = $P1($P5, __ARG_2, $P6)
    .tailcall $P3($P4)
# }
.annotate 'line', 356

.end # mpz_get_str


.sub 'mpz_add'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 369
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 370
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_add"
    throw $P2
  __label_1: # endif
.annotate 'line', 371
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 372
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_add"
    throw $P2
  __label_2: # endif
.annotate 'line', 373
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 374
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_add"
    throw $P2
  __label_3: # endif
.annotate 'line', 375
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_add'
.annotate 'line', 377
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 378

.end # mpz_add


.sub 'mpz_add_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 381
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 382
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_add_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 383
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 384
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_add_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 385
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_add_ui'
.annotate 'line', 387
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 388

.end # mpz_add_ui


.sub 'mpz_sub'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 403
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 404
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_sub"
    throw $P2
  __label_1: # endif
.annotate 'line', 405
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 406
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_sub"
    throw $P2
  __label_2: # endif
.annotate 'line', 407
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 408
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_sub"
    throw $P2
  __label_3: # endif
.annotate 'line', 409
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sub'
.annotate 'line', 411
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 412

.end # mpz_sub


.sub 'mpz_sub_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 415
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 416
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_sub_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 417
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 418
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_sub_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 419
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sub_ui'
.annotate 'line', 421
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 422

.end # mpz_sub_ui


.sub 'mpz_ui_sub'
        .param pmc __ARG_1
        .param int __ARG_2
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
    $P2['message'] = "incorrect type for rop in mpz_ui_sub"
    throw $P2
  __label_1: # endif
.annotate 'line', 427
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 428
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_ui_sub"
    throw $P2
  __label_2: # endif
.annotate 'line', 429
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_ui_sub'
.annotate 'line', 431
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_3, 'ptr'
    $P1($P2, __ARG_2, $P3)
# }
.annotate 'line', 432

.end # mpz_ui_sub


.sub 'mpz_mul'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 447
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 448
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_mul"
    throw $P2
  __label_1: # endif
.annotate 'line', 449
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 450
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul"
    throw $P2
  __label_2: # endif
.annotate 'line', 451
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 452
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_mul"
    throw $P2
  __label_3: # endif
.annotate 'line', 453
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mul'
.annotate 'line', 455
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 456

.end # mpz_mul


.sub 'mpz_mul_si'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 459
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 460
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_mul_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 461
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 462
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul_si"
    throw $P2
  __label_2: # endif
.annotate 'line', 463
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mul_si'
.annotate 'line', 465
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 466

.end # mpz_mul_si


.sub 'mpz_mul_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 469
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 470
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_mul_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 471
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 472
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 473
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mul_ui'
.annotate 'line', 475
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 476

.end # mpz_mul_ui


.sub 'mpz_addmul'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 489
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 490
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_addmul"
    throw $P2
  __label_1: # endif
.annotate 'line', 491
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 492
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_addmul"
    throw $P2
  __label_2: # endif
.annotate 'line', 493
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 494
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_addmul"
    throw $P2
  __label_3: # endif
.annotate 'line', 495
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_addmul'
.annotate 'line', 497
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 498

.end # mpz_addmul


.sub 'mpz_addmul_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 501
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 502
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_addmul_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 503
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 504
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_addmul_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 505
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_addmul_ui'
.annotate 'line', 507
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 508

.end # mpz_addmul_ui


.sub 'mpz_submul'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 521
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 522
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_submul"
    throw $P2
  __label_1: # endif
.annotate 'line', 523
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 524
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_submul"
    throw $P2
  __label_2: # endif
.annotate 'line', 525
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 526
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_submul"
    throw $P2
  __label_3: # endif
.annotate 'line', 527
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_submul'
.annotate 'line', 529
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 530

.end # mpz_submul


.sub 'mpz_submul_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 533
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 534
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_submul_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 535
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 536
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_submul_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 537
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_submul_ui'
.annotate 'line', 539
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 540

.end # mpz_submul_ui


.sub 'mpz_mul_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 551
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 552
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_mul_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 553
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 554
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 555
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mul_2exp'
.annotate 'line', 557
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 558

.end # mpz_mul_2exp


.sub 'mpz_neg'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 569
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 570
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_neg"
    throw $P2
  __label_1: # endif
.annotate 'line', 571
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 572
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_neg"
    throw $P2
  __label_2: # endif
.annotate 'line', 573
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_neg'
.annotate 'line', 575
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 576

.end # mpz_neg


.sub 'mpz_abs'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 587
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 588
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_abs"
    throw $P2
  __label_1: # endif
.annotate 'line', 589
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 590
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_abs"
    throw $P2
  __label_2: # endif
.annotate 'line', 591
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_abs'
.annotate 'line', 593
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 594

.end # mpz_abs


.sub 'mpz_cdiv_q'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 619
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 620
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_q"
    throw $P2
  __label_1: # endif
.annotate 'line', 621
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 622
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_q"
    throw $P2
  __label_2: # endif
.annotate 'line', 623
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 624
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_cdiv_q"
    throw $P2
  __label_3: # endif
.annotate 'line', 625
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_q'
.annotate 'line', 627
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 628

.end # mpz_cdiv_q


.sub 'mpz_cdiv_r'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 631
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 632
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_r"
    throw $P2
  __label_1: # endif
.annotate 'line', 633
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 634
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_r"
    throw $P2
  __label_2: # endif
.annotate 'line', 635
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 636
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_cdiv_r"
    throw $P2
  __label_3: # endif
.annotate 'line', 637
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_r'
.annotate 'line', 639
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 640

.end # mpz_cdiv_r


.sub 'mpz_cdiv_qr'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 643
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 644
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_qr"
    throw $P2
  __label_1: # endif
.annotate 'line', 645
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 646
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_qr"
    throw $P2
  __label_2: # endif
.annotate 'line', 647
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 648
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_qr"
    throw $P2
  __label_3: # endif
.annotate 'line', 649
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 650
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_cdiv_qr"
    throw $P2
  __label_4: # endif
.annotate 'line', 651
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_qr'
.annotate 'line', 653
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 654

.end # mpz_cdiv_qr


.sub 'mpz_cdiv_q_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 657
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 658
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_q_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 659
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 660
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_q_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 661
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_q_ui'
.annotate 'line', 663
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 664

.end # mpz_cdiv_q_ui


.sub 'mpz_cdiv_r_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 667
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 668
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_r_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 669
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 670
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_r_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 671
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_r_ui'
.annotate 'line', 673
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 674

.end # mpz_cdiv_r_ui


.sub 'mpz_cdiv_qr_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 677
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 678
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_qr_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 679
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 680
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_qr_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 681
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 682
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_qr_ui"
    throw $P2
  __label_3: # endif
.annotate 'line', 683
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_qr_ui'
.annotate 'line', 685
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 686

.end # mpz_cdiv_qr_ui


.sub 'mpz_cdiv_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 689
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 690
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 691
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_ui'
.annotate 'line', 693
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 694

.end # mpz_cdiv_ui


.sub 'mpz_cdiv_q_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 697
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 698
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_q_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 699
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 700
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_q_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 701
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_q_2exp'
.annotate 'line', 703
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 704

.end # mpz_cdiv_q_2exp


.sub 'mpz_cdiv_r_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 707
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 708
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_r_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 709
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 710
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_r_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 711
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
.annotate 'line', 747
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 748

.end # mpz_fdiv_q


.sub 'mpz_fdiv_r'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 751
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 752
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_r"
    throw $P2
  __label_1: # endif
.annotate 'line', 753
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 754
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_r"
    throw $P2
  __label_2: # endif
.annotate 'line', 755
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 756
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_fdiv_r"
    throw $P2
  __label_3: # endif
.annotate 'line', 757
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_r'
.annotate 'line', 759
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 760

.end # mpz_fdiv_r


.sub 'mpz_fdiv_qr'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 763
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 764
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_qr"
    throw $P2
  __label_1: # endif
.annotate 'line', 765
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 766
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_qr"
    throw $P2
  __label_2: # endif
.annotate 'line', 767
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 768
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_qr"
    throw $P2
  __label_3: # endif
.annotate 'line', 769
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 770
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_fdiv_qr"
    throw $P2
  __label_4: # endif
.annotate 'line', 771
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_qr'
.annotate 'line', 773
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 774

.end # mpz_fdiv_qr


.sub 'mpz_fdiv_q_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 777
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 778
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_q_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 779
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 780
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_q_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 781
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_q_ui'
.annotate 'line', 783
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 784

.end # mpz_fdiv_q_ui


.sub 'mpz_fdiv_r_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 787
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 788
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_r_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 789
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 790
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_r_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 791
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_r_ui'
.annotate 'line', 793
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 794

.end # mpz_fdiv_r_ui


.sub 'mpz_fdiv_qr_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 797
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 798
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_qr_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 799
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 800
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_qr_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 801
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 802
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_qr_ui"
    throw $P2
  __label_3: # endif
.annotate 'line', 803
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_qr_ui'
.annotate 'line', 805
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 806

.end # mpz_fdiv_qr_ui


.sub 'mpz_fdiv_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 809
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 810
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 811
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_ui'
.annotate 'line', 813
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 814

.end # mpz_fdiv_ui


.sub 'mpz_fdiv_q_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 817
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 818
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_q_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 819
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 820
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_q_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 821
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_q_2exp'
.annotate 'line', 823
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 824

.end # mpz_fdiv_q_2exp


.sub 'mpz_fdiv_r_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 827
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 828
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_r_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 829
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 830
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_r_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 831
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_r_2exp'
.annotate 'line', 833
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 834

.end # mpz_fdiv_r_2exp


.sub 'mpz_tdiv_q'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 863
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 864
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_q"
    throw $P2
  __label_1: # endif
.annotate 'line', 865
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 866
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_q"
    throw $P2
  __label_2: # endif
.annotate 'line', 867
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 868
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_tdiv_q"
    throw $P2
  __label_3: # endif
.annotate 'line', 869
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_q'
.annotate 'line', 871
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 872

.end # mpz_tdiv_q


.sub 'mpz_tdiv_r'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 875
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 876
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_r"
    throw $P2
  __label_1: # endif
.annotate 'line', 877
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 878
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_r"
    throw $P2
  __label_2: # endif
.annotate 'line', 879
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 880
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_tdiv_r"
    throw $P2
  __label_3: # endif
.annotate 'line', 881
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_r'
.annotate 'line', 883
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 884

.end # mpz_tdiv_r


.sub 'mpz_tdiv_qr'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 887
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 888
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_qr"
    throw $P2
  __label_1: # endif
.annotate 'line', 889
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 890
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_qr"
    throw $P2
  __label_2: # endif
.annotate 'line', 891
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 892
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_qr"
    throw $P2
  __label_3: # endif
.annotate 'line', 893
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 894
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_tdiv_qr"
    throw $P2
  __label_4: # endif
.annotate 'line', 895
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_qr'
.annotate 'line', 897
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 898

.end # mpz_tdiv_qr


.sub 'mpz_tdiv_q_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 901
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 902
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_q_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 903
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 904
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_q_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 905
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_q_ui'
.annotate 'line', 907
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 908

.end # mpz_tdiv_q_ui


.sub 'mpz_tdiv_r_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 911
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 912
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_r_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 913
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 914
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_r_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 915
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_r_ui'
.annotate 'line', 917
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 918

.end # mpz_tdiv_r_ui


.sub 'mpz_tdiv_qr_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 921
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 922
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_qr_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 923
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 924
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_qr_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 925
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 926
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_qr_ui"
    throw $P2
  __label_3: # endif
.annotate 'line', 927
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_qr_ui'
.annotate 'line', 929
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 930

.end # mpz_tdiv_qr_ui


.sub 'mpz_tdiv_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 933
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 934
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 935
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_ui'
.annotate 'line', 937
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 938

.end # mpz_tdiv_ui


.sub 'mpz_tdiv_q_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 941
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 942
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_q_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 943
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 944
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_q_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 945
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_q_2exp'
.annotate 'line', 947
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 948

.end # mpz_tdiv_q_2exp


.sub 'mpz_tdiv_r_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 951
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 952
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_r_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 953
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 954
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_r_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 955
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_r_2exp'
.annotate 'line', 957
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 958

.end # mpz_tdiv_r_2exp


.sub 'mpz_mod'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 971
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 972
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_mod"
    throw $P2
  __label_1: # endif
.annotate 'line', 973
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 974
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_mod"
    throw $P2
  __label_2: # endif
.annotate 'line', 975
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 976
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_mod"
    throw $P2
  __label_3: # endif
.annotate 'line', 977
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mod'
.annotate 'line', 979
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 980

.end # mpz_mod


.sub 'mpz_mod_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 983
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 984
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_mod_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 985
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 986
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_mod_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 987
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_r_ui'
.annotate 'line', 989
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 990

.end # mpz_mod_ui


.sub 'mpz_divexact'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1003
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1004
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_divexact"
    throw $P2
  __label_1: # endif
.annotate 'line', 1005
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1006
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divexact"
    throw $P2
  __label_2: # endif
.annotate 'line', 1007
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1008
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_divexact"
    throw $P2
  __label_3: # endif
.annotate 'line', 1009
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divexact'
.annotate 'line', 1011
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1012

.end # mpz_divexact


.sub 'mpz_divexact_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1015
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1016
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_divexact_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1017
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1018
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divexact_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1019
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divexact_ui'
.annotate 'line', 1021
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1022

.end # mpz_divexact_ui


.sub 'mpz_divisible_p'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1037
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1038
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divisible_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1039
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1040
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_divisible_p"
    throw $P2
  __label_2: # endif
.annotate 'line', 1041
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divisible_p'
.annotate 'line', 1043
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1044

.end # mpz_divisible_p


.sub 'mpz_divisible_ui_p'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1047
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1048
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divisible_ui_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1049
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divisible_ui_p'
.annotate 'line', 1051
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1052

.end # mpz_divisible_ui_p


.sub 'mpz_divisible_2exp_p'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1055
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1056
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divisible_2exp_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1057
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divisible_2exp_p'
.annotate 'line', 1059
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1060

.end # mpz_divisible_2exp_p


.sub 'mpz_congruent_p'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1075
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1076
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_congruent_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1077
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1078
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for c in mpz_congruent_p"
    throw $P2
  __label_2: # endif
.annotate 'line', 1079
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1080
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_congruent_p"
    throw $P2
  __label_3: # endif
.annotate 'line', 1081
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_congruent_p'
.annotate 'line', 1083
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4)
# }
.annotate 'line', 1084

.end # mpz_congruent_p


.sub 'mpz_congruent_ui_p'
        .param pmc __ARG_1
        .param int __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1087
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1088
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_congruent_ui_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1089
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_congruent_ui_p'
.annotate 'line', 1091
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1092

.end # mpz_congruent_ui_p


.sub 'mpz_congruent_2exp_p'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1095
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1096
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_congruent_2exp_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1097
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1098
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for c in mpz_congruent_2exp_p"
    throw $P2
  __label_2: # endif
.annotate 'line', 1099
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_congruent_2exp_p'
.annotate 'line', 1101
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1102

.end # mpz_congruent_2exp_p


.sub 'mpz_powm'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 1115
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1116
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_powm"
    throw $P2
  __label_1: # endif
.annotate 'line', 1117
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1118
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_powm"
    throw $P2
  __label_2: # endif
.annotate 'line', 1119
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1120
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for exp in mpz_powm"
    throw $P2
  __label_3: # endif
.annotate 'line', 1121
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 1122
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for mod in mpz_powm"
    throw $P2
  __label_4: # endif
.annotate 'line', 1123
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_powm'
.annotate 'line', 1125
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 1126

.end # mpz_powm


.sub 'mpz_powm_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 1129
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1130
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_powm_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1131
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1132
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_powm_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1133
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1134
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for mod in mpz_powm_ui"
    throw $P2
  __label_3: # endif
.annotate 'line', 1135
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_powm_ui'
.annotate 'line', 1137
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_4, 'ptr'
    $P1($P2, $P3, __ARG_3, $P4)
# }
.annotate 'line', 1138

.end # mpz_powm_ui


.sub 'mpz_powm_sec'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 1149
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1150
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_powm_sec"
    throw $P2
  __label_1: # endif
.annotate 'line', 1151
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1152
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_powm_sec"
    throw $P2
  __label_2: # endif
.annotate 'line', 1153
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1154
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for exp in mpz_powm_sec"
    throw $P2
  __label_3: # endif
.annotate 'line', 1155
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 1156
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for mod in mpz_powm_sec"
    throw $P2
  __label_4: # endif
.annotate 'line', 1157
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_powm_sec'
.annotate 'line', 1159
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 1160

.end # mpz_powm_sec


.sub 'mpz_pow_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1173
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1174
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_pow_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1175
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1176
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_pow_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1177
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_pow_ui'
.annotate 'line', 1179
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1180

.end # mpz_pow_ui


.sub 'mpz_ui_pow_ui'
        .param pmc __ARG_1
        .param int __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1183
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1184
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_ui_pow_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1185
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_ui_pow_ui'
.annotate 'line', 1187
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1188

.end # mpz_ui_pow_ui


.sub 'mpz_root'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1199
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1200
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_root"
    throw $P2
  __label_1: # endif
.annotate 'line', 1201
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1202
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_root"
    throw $P2
  __label_2: # endif
.annotate 'line', 1203
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_root'
.annotate 'line', 1205
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1206

.end # mpz_root


.sub 'mpz_rootrem'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 1217
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1218
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for root in mpz_rootrem"
    throw $P2
  __label_1: # endif
.annotate 'line', 1219
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1220
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rem in mpz_rootrem"
    throw $P2
  __label_2: # endif
.annotate 'line', 1221
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1222
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for u in mpz_rootrem"
    throw $P2
  __label_3: # endif
.annotate 'line', 1223
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_rootrem'
.annotate 'line', 1225
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 1226

.end # mpz_rootrem


.sub 'mpz_sqrt'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1237
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1238
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_sqrt"
    throw $P2
  __label_1: # endif
.annotate 'line', 1239
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1240
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_sqrt"
    throw $P2
  __label_2: # endif
.annotate 'line', 1241
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sqrt'
.annotate 'line', 1243
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 1244

.end # mpz_sqrt


.sub 'mpz_sqrtrem'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1255
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1256
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop1 in mpz_sqrtrem"
    throw $P2
  __label_1: # endif
.annotate 'line', 1257
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1258
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop2 in mpz_sqrtrem"
    throw $P2
  __label_2: # endif
.annotate 'line', 1259
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1260
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_sqrtrem"
    throw $P2
  __label_3: # endif
.annotate 'line', 1261
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sqrtrem'
.annotate 'line', 1263
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1264

.end # mpz_sqrtrem


.sub 'mpz_perfect_power_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1275
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1276
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_perfect_power_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1277
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_perfect_power_p'
.annotate 'line', 1279
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1280

.end # mpz_perfect_power_p


.sub 'mpz_perfect_square_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1291
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1292
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_perfect_square_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1293
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_perfect_square_p'
.annotate 'line', 1295
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1296

.end # mpz_perfect_square_p


.sub 'mpz_probab_prime_p'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1307
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1308
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_probab_prime_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1309
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_probab_prime_p'
.annotate 'line', 1311
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1312

.end # mpz_probab_prime_p


.sub 'mpz_nextprime'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1323
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1324
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_nextprime"
    throw $P2
  __label_1: # endif
.annotate 'line', 1325
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1326
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_nextprime"
    throw $P2
  __label_2: # endif
.annotate 'line', 1327
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_nextprime'
.annotate 'line', 1329
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 1330

.end # mpz_nextprime


.sub 'mpz_gcd'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1341
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1342
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_gcd"
    throw $P2
  __label_1: # endif
.annotate 'line', 1343
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1344
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_gcd"
    throw $P2
  __label_2: # endif
.annotate 'line', 1345
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1346
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_gcd"
    throw $P2
  __label_3: # endif
.annotate 'line', 1347
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_gcd'
.annotate 'line', 1349
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1350

.end # mpz_gcd


.sub 'mpz_gcd_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1361
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1362
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_gcd_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1363
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1364
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_gcd_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1365
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_gcd_ui'
.annotate 'line', 1367
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1368

.end # mpz_gcd_ui


.sub 'mpz_gcdext'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
        .param pmc __ARG_5
# Body
# {
.annotate 'line', 1379
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1380
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for g in mpz_gcdext"
    throw $P2
  __label_1: # endif
.annotate 'line', 1381
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1382
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for s in mpz_gcdext"
    throw $P2
  __label_2: # endif
.annotate 'line', 1383
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1384
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for t in mpz_gcdext"
    throw $P2
  __label_3: # endif
.annotate 'line', 1385
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 1386
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_gcdext"
    throw $P2
  __label_4: # endif
.annotate 'line', 1387
    isa $I2, __ARG_5, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_5
# predefined Error
.annotate 'line', 1388
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_gcdext"
    throw $P2
  __label_5: # endif
.annotate 'line', 1389
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_gcdext'
.annotate 'line', 1391
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    getattribute $P6, __ARG_5, 'ptr'
    $P1($P2, $P3, $P4, $P5, $P6)
# }
.annotate 'line', 1392

.end # mpz_gcdext


.sub 'mpz_lcm'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1405
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1406
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_lcm"
    throw $P2
  __label_1: # endif
.annotate 'line', 1407
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1408
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_lcm"
    throw $P2
  __label_2: # endif
.annotate 'line', 1409
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1410
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_lcm"
    throw $P2
  __label_3: # endif
.annotate 'line', 1411
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_lcm'
.annotate 'line', 1413
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1414

.end # mpz_lcm


.sub 'mpz_lcm_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1417
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1418
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_lcm_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1419
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1420
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_lcm_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1421
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_lcm_ui'
.annotate 'line', 1423
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1424

.end # mpz_lcm_ui


.sub 'mpz_invert'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1435
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1436
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_invert"
    throw $P2
  __label_1: # endif
.annotate 'line', 1437
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1438
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_invert"
    throw $P2
  __label_2: # endif
.annotate 'line', 1439
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1440
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_invert"
    throw $P2
  __label_3: # endif
.annotate 'line', 1441
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_invert'
.annotate 'line', 1443
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4)
# }
.annotate 'line', 1444

.end # mpz_invert


.sub 'mpz_jacobi'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1455
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1456
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_jacobi"
    throw $P2
  __label_1: # endif
.annotate 'line', 1457
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1458
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_jacobi"
    throw $P2
  __label_2: # endif
.annotate 'line', 1459
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_jacobi'
.annotate 'line', 1461
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1462

.end # mpz_jacobi


.sub 'mpz_legendre'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1473
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1474
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_legendre"
    throw $P2
  __label_1: # endif
.annotate 'line', 1475
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1476
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for p in mpz_legendre"
    throw $P2
  __label_2: # endif
.annotate 'line', 1477
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_jacobi'
.annotate 'line', 1479
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1480

.end # mpz_legendre


.sub 'mpz_kronecker'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1499
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1500
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_kronecker"
    throw $P2
  __label_1: # endif
.annotate 'line', 1501
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1502
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_kronecker"
    throw $P2
  __label_2: # endif
.annotate 'line', 1503
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_jacobi'
.annotate 'line', 1505
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1506

.end # mpz_kronecker


.sub 'mpz_kronecker_si'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1509
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1510
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_kronecker_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 1511
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_kronecker_si'
.annotate 'line', 1513
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1514

.end # mpz_kronecker_si


.sub 'mpz_kronecker_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1517
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1518
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_kronecker_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1519
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_kronecker_ui'
.annotate 'line', 1521
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1522

.end # mpz_kronecker_ui


.sub 'mpz_si_kronecker'
        .param int __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1525
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1526
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_si_kronecker"
    throw $P2
  __label_1: # endif
.annotate 'line', 1527
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_si_kronecker'
.annotate 'line', 1529
    getattribute $P2, __ARG_2, 'ptr'
    .tailcall $P1(__ARG_1, $P2)
# }
.annotate 'line', 1530

.end # mpz_si_kronecker


.sub 'mpz_ui_kronecker'
        .param int __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1533
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1534
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_ui_kronecker"
    throw $P2
  __label_1: # endif
.annotate 'line', 1535
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_ui_kronecker'
.annotate 'line', 1537
    getattribute $P2, __ARG_2, 'ptr'
    .tailcall $P1(__ARG_1, $P2)
# }
.annotate 'line', 1538

.end # mpz_ui_kronecker


.sub 'mpz_remove'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1549
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1550
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_remove"
    throw $P2
  __label_1: # endif
.annotate 'line', 1551
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1552
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_remove"
    throw $P2
  __label_2: # endif
.annotate 'line', 1553
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1554
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for f in mpz_remove"
    throw $P2
  __label_3: # endif
.annotate 'line', 1555
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_remove'
.annotate 'line', 1557
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4)
# }
.annotate 'line', 1558

.end # mpz_remove


.sub 'mpz_fac_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1569
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1570
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_fac_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1571
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fac_ui'
.annotate 'line', 1573
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1574

.end # mpz_fac_ui


.sub 'mpz_bin_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1587
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1588
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_bin_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1589
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1590
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_bin_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1591
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_bin_ui'
.annotate 'line', 1593
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1594

.end # mpz_bin_ui


.sub 'mpz_bin_uiui'
        .param pmc __ARG_1
        .param int __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1597
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1598
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_bin_uiui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1599
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_bin_uiui'
.annotate 'line', 1601
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1602

.end # mpz_bin_uiui


.sub 'mpz_fib_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1615
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1616
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for fn in mpz_fib_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1617
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fib_ui'
.annotate 'line', 1619
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1620

.end # mpz_fib_ui


.sub 'mpz_fib2_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1623
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1624
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for fn in mpz_fib2_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1625
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1626
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for fnsub1 in mpz_fib2_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1627
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fib2_ui'
.annotate 'line', 1629
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1630

.end # mpz_fib2_ui


.sub 'mpz_lucnum_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1643
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1644
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for ln in mpz_lucnum_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1645
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_lucnum_ui'
.annotate 'line', 1647
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1648

.end # mpz_lucnum_ui


.sub 'mpz_lucnum2_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1651
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1652
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for ln in mpz_lucnum2_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1653
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1654
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for lnsub1 in mpz_lucnum2_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1655
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_lucnum2_ui'
.annotate 'line', 1657
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1658

.end # mpz_lucnum2_ui


.sub 'mpz_cmp'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1671
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1672
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmp"
    throw $P2
  __label_1: # endif
.annotate 'line', 1673
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1674
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_cmp"
    throw $P2
  __label_2: # endif
.annotate 'line', 1675
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmp'
.annotate 'line', 1677
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1678

.end # mpz_cmp


.sub 'mpz_cmp_d'
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 1681
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1682
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmp_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 1683
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmp_d'
.annotate 'line', 1685
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1686

.end # mpz_cmp_d


.sub 'mpz_cmpabs'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1701
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1702
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmpabs"
    throw $P2
  __label_1: # endif
.annotate 'line', 1703
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1704
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_cmpabs"
    throw $P2
  __label_2: # endif
.annotate 'line', 1705
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmpabs'
.annotate 'line', 1707
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1708

.end # mpz_cmpabs


.sub 'mpz_cmpabs_d'
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 1711
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1712
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmpabs_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 1713
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmpabs_d'
.annotate 'line', 1715
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1716

.end # mpz_cmpabs_d


.sub 'mpz_cmpabs_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1719
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1720
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmpabs_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1721
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmpabs_ui'
.annotate 'line', 1723
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1724

.end # mpz_cmpabs_ui


.sub 'mpz_and'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1735
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1736
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_and"
    throw $P2
  __label_1: # endif
.annotate 'line', 1737
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1738
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_and"
    throw $P2
  __label_2: # endif
.annotate 'line', 1739
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1740
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_and"
    throw $P2
  __label_3: # endif
.annotate 'line', 1741
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_and'
.annotate 'line', 1743
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1744

.end # mpz_and


.sub 'mpz_ior'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1755
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1756
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_ior"
    throw $P2
  __label_1: # endif
.annotate 'line', 1757
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1758
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_ior"
    throw $P2
  __label_2: # endif
.annotate 'line', 1759
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1760
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_ior"
    throw $P2
  __label_3: # endif
.annotate 'line', 1761
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_ior'
.annotate 'line', 1763
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1764

.end # mpz_ior


.sub 'mpz_xor'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1775
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1776
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_xor"
    throw $P2
  __label_1: # endif
.annotate 'line', 1777
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1778
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_xor"
    throw $P2
  __label_2: # endif
.annotate 'line', 1779
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1780
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_xor"
    throw $P2
  __label_3: # endif
.annotate 'line', 1781
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_xor'
.annotate 'line', 1783
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1784

.end # mpz_xor


.sub 'mpz_com'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1795
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1796
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_com"
    throw $P2
  __label_1: # endif
.annotate 'line', 1797
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1798
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_com"
    throw $P2
  __label_2: # endif
.annotate 'line', 1799
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_com'
.annotate 'line', 1801
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 1802

.end # mpz_com


.sub 'mpz_popcount'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1813
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1814
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_popcount"
    throw $P2
  __label_1: # endif
.annotate 'line', 1815
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_popcount'
.annotate 'line', 1817
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1818

.end # mpz_popcount


.sub 'mpz_hamdist'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1829
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1830
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_hamdist"
    throw $P2
  __label_1: # endif
.annotate 'line', 1831
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1832
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_hamdist"
    throw $P2
  __label_2: # endif
.annotate 'line', 1833
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_hamdist'
.annotate 'line', 1835
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1836

.end # mpz_hamdist


.sub 'mpz_scan0'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1849
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1850
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_scan0"
    throw $P2
  __label_1: # endif
.annotate 'line', 1851
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_scan0'
.annotate 'line', 1853
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1854

.end # mpz_scan0


.sub 'mpz_scan1'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1857
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1858
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_scan1"
    throw $P2
  __label_1: # endif
.annotate 'line', 1859
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_scan1'
.annotate 'line', 1861
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1862

.end # mpz_scan1


.sub 'mpz_setbit'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1873
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1874
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_setbit"
    throw $P2
  __label_1: # endif
.annotate 'line', 1875
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_setbit'
.annotate 'line', 1877
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1878

.end # mpz_setbit


.sub 'mpz_clrbit'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1889
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1890
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_clrbit"
    throw $P2
  __label_1: # endif
.annotate 'line', 1891
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_clrbit'
.annotate 'line', 1893
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1894

.end # mpz_clrbit


.sub 'mpz_combit'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1905
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1906
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_combit"
    throw $P2
  __label_1: # endif
.annotate 'line', 1907
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_combit'
.annotate 'line', 1909
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1910

.end # mpz_combit


.sub 'mpz_tstbit'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1921
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1922
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_tstbit"
    throw $P2
  __label_1: # endif
.annotate 'line', 1923
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tstbit'
.annotate 'line', 1925
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1926

.end # mpz_tstbit


.sub 'mpz_urandomb'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1937
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1938
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_urandomb"
    throw $P2
  __label_1: # endif
.annotate 'line', 1939
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_urandomb'
.annotate 'line', 1941
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1942

.end # mpz_urandomb


.sub 'mpz_urandomm'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1953
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1954
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_urandomm"
    throw $P2
  __label_1: # endif
.annotate 'line', 1955
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1956
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_urandomm"
    throw $P2
  __label_2: # endif
.annotate 'line', 1957
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_urandomm'
.annotate 'line', 1959
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_3, 'ptr'
    $P1($P2, __ARG_2, $P3)
# }
.annotate 'line', 1960

.end # mpz_urandomm


.sub 'mpz_rrandomb'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1971
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1972
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_rrandomb"
    throw $P2
  __label_1: # endif
.annotate 'line', 1973
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_rrandomb'
.annotate 'line', 1975
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1976

.end # mpz_rrandomb


.sub 'mpz_fits_ulong_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1997
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1998
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_ulong_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1999
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_ulong_p'
.annotate 'line', 2001
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2002

.end # mpz_fits_ulong_p


.sub 'mpz_fits_slong_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2005
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2006
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_slong_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 2007
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_slong_p'
.annotate 'line', 2009
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2010

.end # mpz_fits_slong_p


.sub 'mpz_fits_uint_p'
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
    $P2['message'] = "incorrect type for op in mpz_fits_uint_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 2015
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_uint_p'
.annotate 'line', 2017
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2018

.end # mpz_fits_uint_p


.sub 'mpz_fits_sint_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2021
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2022
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_sint_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 2023
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_sint_p'
.annotate 'line', 2025
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2026

.end # mpz_fits_sint_p


.sub 'mpz_fits_ushort_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2029
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2030
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_ushort_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 2031
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_ushort_p'
.annotate 'line', 2033
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2034

.end # mpz_fits_ushort_p


.sub 'mpz_fits_sshort_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2037
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2038
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_sshort_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 2039
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_sshort_p'
.annotate 'line', 2041
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2042

.end # mpz_fits_sshort_p


.sub 'mpz_sizeinbase'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 2053
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2054
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_sizeinbase"
    throw $P2
  __label_1: # endif
.annotate 'line', 2055
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sizeinbase'
.annotate 'line', 2057
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 2058

.end # mpz_sizeinbase


.sub 'mpz_getlimbn'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 2069
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2070
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_getlimbn"
    throw $P2
  __label_1: # endif
.annotate 'line', 2071
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_getlimbn'
.annotate 'line', 2073
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 2074

.end # mpz_getlimbn


.sub 'mpz_size'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2085
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2086
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_size"
    throw $P2
  __label_1: # endif
.annotate 'line', 2087
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_size'
.annotate 'line', 2089
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2090

.end # mpz_size

# End generated code
