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
.annotate 'line', 68
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 69
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_init"
    throw $P2
  __label_1: # endif
.annotate 'line', 70
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init'
.annotate 'line', 72
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2)
# }
.annotate 'line', 73

.end # mpz_init


.sub 'mpz_init2'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 84
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 85
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_init2"
    throw $P2
  __label_1: # endif
.annotate 'line', 86
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init2'
.annotate 'line', 88
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 89

.end # mpz_init2


.sub 'mpz_clear'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 100
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 101
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_clear"
    throw $P2
  __label_1: # endif
.annotate 'line', 102
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_clear'
.annotate 'line', 104
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2)
# }
.annotate 'line', 105

.end # mpz_clear


.sub 'mpz_realloc2'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 116
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 117
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_realloc2"
    throw $P2
  __label_1: # endif
.annotate 'line', 118
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_realloc2'
.annotate 'line', 120
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 121

.end # mpz_realloc2


.sub 'mpz_set'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 138
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 139
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set"
    throw $P2
  __label_1: # endif
.annotate 'line', 140
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 141
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_set"
    throw $P2
  __label_2: # endif
.annotate 'line', 142
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set'
.annotate 'line', 144
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 145

.end # mpz_set


.sub 'mpz_set_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 148
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 149
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 150
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set_ui'
.annotate 'line', 152
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 153

.end # mpz_set_ui


.sub 'mpz_set_si'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 156
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 157
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 158
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set_si'
.annotate 'line', 160
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 161

.end # mpz_set_si


.sub 'mpz_set_d'
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 164
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 165
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 166
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set_d'
.annotate 'line', 168
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 169

.end # mpz_set_d


.sub 'mpz_set_str' :subid('WSubId_1')
        .param pmc __ARG_1
        .param string __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 180
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 181
    root_new $P3, ['parrot';'Exception']
    $P3['message'] = "incorrect type for rop in mpz_set_str"
    throw $P3
  __label_1: # endif
.annotate 'line', 182
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_set_str'
.annotate 'line', 183
    get_hll_global $P2, [ 'GMP'; 'Common' ] , 'stoa'
.annotate 'line', 185
    getattribute $P3, __ARG_1, 'ptr'
    $P4 = $P2(__ARG_2)
    .tailcall $P1($P3, $P4, __ARG_3)
# }
.annotate 'line', 186

.end # mpz_set_str


.sub 'mpz_swap'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 197
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 198
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop1 in mpz_swap"
    throw $P2
  __label_1: # endif
.annotate 'line', 199
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 200
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop2 in mpz_swap"
    throw $P2
  __label_2: # endif
.annotate 'line', 201
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_swap'
.annotate 'line', 203
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 204

.end # mpz_swap


.sub 'mpz_init_set'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 221
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 222
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set"
    throw $P2
  __label_1: # endif
.annotate 'line', 223
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 224
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_init_set"
    throw $P2
  __label_2: # endif
.annotate 'line', 225
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init_set'
.annotate 'line', 227
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 228

.end # mpz_init_set


.sub 'mpz_init_set_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 231
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 232
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 233
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init_set_ui'
.annotate 'line', 235
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 236

.end # mpz_init_set_ui


.sub 'mpz_init_set_si'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 239
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 240
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 241
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init_set_si'
.annotate 'line', 243
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 244

.end # mpz_init_set_si


.sub 'mpz_init_set_d'
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 247
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 248
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 249
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init_set_d'
.annotate 'line', 251
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 252

.end # mpz_init_set_d


.sub 'mpz_init_set_str'
        .param pmc __ARG_1
        .param string __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 263
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 264
    root_new $P3, ['parrot';'Exception']
    $P3['message'] = "incorrect type for rop in mpz_init_set_str"
    throw $P3
  __label_1: # endif
.annotate 'line', 265
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_init_set_str'
.annotate 'line', 266
    get_hll_global $P2, [ 'GMP'; 'Common' ] , 'stoa'
.annotate 'line', 268
    getattribute $P3, __ARG_1, 'ptr'
    $P4 = $P2(__ARG_2)
    .tailcall $P1($P3, $P4, __ARG_3)
# }
.annotate 'line', 269

.end # mpz_init_set_str


.sub 'mpz_get_ui'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 280
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 281
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 282
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
.annotate 'line', 300
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 301

.end # mpz_get_si


.sub 'mpz_get_d'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 312
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 313
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 314
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_get_d'
.annotate 'line', 316
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 317

.end # mpz_get_d


.sub 'mpz_get_d_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 328
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 329
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_d_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 330
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_get_d_2exp'
.annotate 'line', 332
    getattribute $P2, __ARG_2, 'ptr'
    .tailcall $P1(__ARG_1, $P2)
# }
.annotate 'line', 333

.end # mpz_get_d_2exp


.sub 'mpz_get_str' :subid('WSubId_2')
        .param string __ARG_1
        .param int __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 344
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 345
    root_new $P4, ['parrot';'Exception']
    $P4['message'] = "incorrect type for op in mpz_get_str"
    throw $P4
  __label_1: # endif
.annotate 'line', 346
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_get_str'
.annotate 'line', 347
    get_hll_global $P2, [ 'GMP'; 'Common' ] , 'stoa'
.annotate 'line', 348
    get_hll_global $P3, [ 'GMP'; 'Common' ] , 'atos'
.annotate 'line', 350
    $P5 = $P2(__ARG_1)
    getattribute $P6, __ARG_3, 'ptr'
    $P4 = $P1($P5, __ARG_2, $P6)
    .tailcall $P3($P4)
# }
.annotate 'line', 351

.end # mpz_get_str


.sub 'mpz_add'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 364
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 365
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_add"
    throw $P2
  __label_1: # endif
.annotate 'line', 366
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 367
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_add"
    throw $P2
  __label_2: # endif
.annotate 'line', 368
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 369
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_add"
    throw $P2
  __label_3: # endif
.annotate 'line', 370
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_add'
.annotate 'line', 372
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 373

.end # mpz_add


.sub 'mpz_add_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 376
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 377
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_add_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 378
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 379
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_add_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 380
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_add_ui'
.annotate 'line', 382
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 383

.end # mpz_add_ui


.sub 'mpz_sub'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 398
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 399
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_sub"
    throw $P2
  __label_1: # endif
.annotate 'line', 400
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 401
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_sub"
    throw $P2
  __label_2: # endif
.annotate 'line', 402
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 403
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_sub"
    throw $P2
  __label_3: # endif
.annotate 'line', 404
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sub'
.annotate 'line', 406
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 407

.end # mpz_sub


.sub 'mpz_sub_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 410
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 411
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_sub_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 412
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 413
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_sub_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 414
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sub_ui'
.annotate 'line', 416
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 417

.end # mpz_sub_ui


.sub 'mpz_ui_sub'
        .param pmc __ARG_1
        .param int __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 420
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 421
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_ui_sub"
    throw $P2
  __label_1: # endif
.annotate 'line', 422
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 423
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_ui_sub"
    throw $P2
  __label_2: # endif
.annotate 'line', 424
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_ui_sub'
.annotate 'line', 426
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_3, 'ptr'
    $P1($P2, __ARG_2, $P3)
# }
.annotate 'line', 427

.end # mpz_ui_sub


.sub 'mpz_mul'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 442
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 443
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_mul"
    throw $P2
  __label_1: # endif
.annotate 'line', 444
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 445
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul"
    throw $P2
  __label_2: # endif
.annotate 'line', 446
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 447
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_mul"
    throw $P2
  __label_3: # endif
.annotate 'line', 448
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mul'
.annotate 'line', 450
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 451

.end # mpz_mul


.sub 'mpz_mul_si'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 454
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 455
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_mul_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 456
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 457
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul_si"
    throw $P2
  __label_2: # endif
.annotate 'line', 458
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mul_si'
.annotate 'line', 460
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 461

.end # mpz_mul_si


.sub 'mpz_mul_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 464
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 465
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_mul_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 466
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 467
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 468
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mul_ui'
.annotate 'line', 470
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 471

.end # mpz_mul_ui


.sub 'mpz_addmul'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 484
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 485
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_addmul"
    throw $P2
  __label_1: # endif
.annotate 'line', 486
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 487
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_addmul"
    throw $P2
  __label_2: # endif
.annotate 'line', 488
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 489
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_addmul"
    throw $P2
  __label_3: # endif
.annotate 'line', 490
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_addmul'
.annotate 'line', 492
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 493

.end # mpz_addmul


.sub 'mpz_addmul_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 496
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 497
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_addmul_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 498
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 499
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_addmul_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 500
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_addmul_ui'
.annotate 'line', 502
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 503

.end # mpz_addmul_ui


.sub 'mpz_submul'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 516
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 517
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_submul"
    throw $P2
  __label_1: # endif
.annotate 'line', 518
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 519
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_submul"
    throw $P2
  __label_2: # endif
.annotate 'line', 520
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 521
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_submul"
    throw $P2
  __label_3: # endif
.annotate 'line', 522
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_submul'
.annotate 'line', 524
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 525

.end # mpz_submul


.sub 'mpz_submul_ui'
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
    $P2['message'] = "incorrect type for rop in mpz_submul_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 530
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 531
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_submul_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 532
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_submul_ui'
.annotate 'line', 534
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 535

.end # mpz_submul_ui


.sub 'mpz_mul_2exp'
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
    $P2['message'] = "incorrect type for rop in mpz_mul_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 548
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 549
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 550
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mul_2exp'
.annotate 'line', 552
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 553

.end # mpz_mul_2exp


.sub 'mpz_neg'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 564
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 565
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_neg"
    throw $P2
  __label_1: # endif
.annotate 'line', 566
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 567
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_neg"
    throw $P2
  __label_2: # endif
.annotate 'line', 568
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_neg'
.annotate 'line', 570
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 571

.end # mpz_neg


.sub 'mpz_abs'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 582
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 583
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_abs"
    throw $P2
  __label_1: # endif
.annotate 'line', 584
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 585
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_abs"
    throw $P2
  __label_2: # endif
.annotate 'line', 586
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_abs'
.annotate 'line', 588
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 589

.end # mpz_abs


.sub 'mpz_cdiv_q'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 614
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 615
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_q"
    throw $P2
  __label_1: # endif
.annotate 'line', 616
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 617
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_q"
    throw $P2
  __label_2: # endif
.annotate 'line', 618
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 619
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_cdiv_q"
    throw $P2
  __label_3: # endif
.annotate 'line', 620
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_q'
.annotate 'line', 622
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 623

.end # mpz_cdiv_q


.sub 'mpz_cdiv_r'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 626
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 627
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_r"
    throw $P2
  __label_1: # endif
.annotate 'line', 628
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 629
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_r"
    throw $P2
  __label_2: # endif
.annotate 'line', 630
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 631
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_cdiv_r"
    throw $P2
  __label_3: # endif
.annotate 'line', 632
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_r'
.annotate 'line', 634
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 635

.end # mpz_cdiv_r


.sub 'mpz_cdiv_qr'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 638
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 639
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_qr"
    throw $P2
  __label_1: # endif
.annotate 'line', 640
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 641
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_qr"
    throw $P2
  __label_2: # endif
.annotate 'line', 642
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 643
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_qr"
    throw $P2
  __label_3: # endif
.annotate 'line', 644
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 645
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_cdiv_qr"
    throw $P2
  __label_4: # endif
.annotate 'line', 646
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_qr'
.annotate 'line', 648
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 649

.end # mpz_cdiv_qr


.sub 'mpz_cdiv_q_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 652
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 653
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_q_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 654
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 655
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_q_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 656
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_q_ui'
.annotate 'line', 658
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 659

.end # mpz_cdiv_q_ui


.sub 'mpz_cdiv_r_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 662
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 663
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_r_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 664
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 665
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_r_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 666
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_r_ui'
.annotate 'line', 668
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 669

.end # mpz_cdiv_r_ui


.sub 'mpz_cdiv_qr_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 672
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 673
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_qr_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 674
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 675
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_qr_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 676
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 677
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_qr_ui"
    throw $P2
  __label_3: # endif
.annotate 'line', 678
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_qr_ui'
.annotate 'line', 680
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 681

.end # mpz_cdiv_qr_ui


.sub 'mpz_cdiv_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 684
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 685
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 686
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_ui'
.annotate 'line', 688
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 689

.end # mpz_cdiv_ui


.sub 'mpz_cdiv_q_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 692
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 693
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_q_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 694
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 695
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_q_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 696
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_q_2exp'
.annotate 'line', 698
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 699

.end # mpz_cdiv_q_2exp


.sub 'mpz_cdiv_r_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 702
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 703
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_r_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 704
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 705
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_r_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 706
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cdiv_r_2exp'
.annotate 'line', 708
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 709

.end # mpz_cdiv_r_2exp


.sub 'mpz_fdiv_q'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 734
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 735
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_q"
    throw $P2
  __label_1: # endif
.annotate 'line', 736
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 737
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_q"
    throw $P2
  __label_2: # endif
.annotate 'line', 738
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 739
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_fdiv_q"
    throw $P2
  __label_3: # endif
.annotate 'line', 740
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_q'
.annotate 'line', 742
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 743

.end # mpz_fdiv_q


.sub 'mpz_fdiv_r'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 746
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 747
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_r"
    throw $P2
  __label_1: # endif
.annotate 'line', 748
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 749
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_r"
    throw $P2
  __label_2: # endif
.annotate 'line', 750
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 751
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_fdiv_r"
    throw $P2
  __label_3: # endif
.annotate 'line', 752
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_r'
.annotate 'line', 754
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 755

.end # mpz_fdiv_r


.sub 'mpz_fdiv_qr'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 758
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 759
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_qr"
    throw $P2
  __label_1: # endif
.annotate 'line', 760
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 761
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_qr"
    throw $P2
  __label_2: # endif
.annotate 'line', 762
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 763
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_qr"
    throw $P2
  __label_3: # endif
.annotate 'line', 764
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 765
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_fdiv_qr"
    throw $P2
  __label_4: # endif
.annotate 'line', 766
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_qr'
.annotate 'line', 768
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 769

.end # mpz_fdiv_qr


.sub 'mpz_fdiv_q_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 772
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 773
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_q_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 774
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 775
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_q_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 776
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_q_ui'
.annotate 'line', 778
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 779

.end # mpz_fdiv_q_ui


.sub 'mpz_fdiv_r_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 782
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 783
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_r_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 784
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 785
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_r_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 786
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
.annotate 'line', 800
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 801

.end # mpz_fdiv_qr_ui


.sub 'mpz_fdiv_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 804
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 805
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 806
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_ui'
.annotate 'line', 808
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 809

.end # mpz_fdiv_ui


.sub 'mpz_fdiv_q_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 812
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 813
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_q_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 814
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 815
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_q_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 816
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_q_2exp'
.annotate 'line', 818
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 819

.end # mpz_fdiv_q_2exp


.sub 'mpz_fdiv_r_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 822
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 823
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_r_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 824
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 825
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_r_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 826
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_r_2exp'
.annotate 'line', 828
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 829

.end # mpz_fdiv_r_2exp


.sub 'mpz_tdiv_q'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 858
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 859
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_q"
    throw $P2
  __label_1: # endif
.annotate 'line', 860
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 861
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_q"
    throw $P2
  __label_2: # endif
.annotate 'line', 862
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 863
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_tdiv_q"
    throw $P2
  __label_3: # endif
.annotate 'line', 864
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_q'
.annotate 'line', 866
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 867

.end # mpz_tdiv_q


.sub 'mpz_tdiv_r'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 870
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 871
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_r"
    throw $P2
  __label_1: # endif
.annotate 'line', 872
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 873
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_r"
    throw $P2
  __label_2: # endif
.annotate 'line', 874
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 875
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_tdiv_r"
    throw $P2
  __label_3: # endif
.annotate 'line', 876
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_r'
.annotate 'line', 878
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 879

.end # mpz_tdiv_r


.sub 'mpz_tdiv_qr'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 882
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 883
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_qr"
    throw $P2
  __label_1: # endif
.annotate 'line', 884
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 885
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_qr"
    throw $P2
  __label_2: # endif
.annotate 'line', 886
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 887
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_qr"
    throw $P2
  __label_3: # endif
.annotate 'line', 888
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 889
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_tdiv_qr"
    throw $P2
  __label_4: # endif
.annotate 'line', 890
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_qr'
.annotate 'line', 892
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 893

.end # mpz_tdiv_qr


.sub 'mpz_tdiv_q_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 896
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 897
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_q_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 898
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 899
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_q_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 900
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_q_ui'
.annotate 'line', 902
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 903

.end # mpz_tdiv_q_ui


.sub 'mpz_tdiv_r_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 906
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 907
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_r_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 908
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 909
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_r_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 910
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_r_ui'
.annotate 'line', 912
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 913

.end # mpz_tdiv_r_ui


.sub 'mpz_tdiv_qr_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 916
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 917
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_qr_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 918
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 919
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_qr_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 920
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 921
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_qr_ui"
    throw $P2
  __label_3: # endif
.annotate 'line', 922
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_qr_ui'
.annotate 'line', 924
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 925

.end # mpz_tdiv_qr_ui


.sub 'mpz_tdiv_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 928
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 929
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 930
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_ui'
.annotate 'line', 932
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 933

.end # mpz_tdiv_ui


.sub 'mpz_tdiv_q_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 936
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 937
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_q_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 938
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 939
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_q_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 940
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_q_2exp'
.annotate 'line', 942
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 943

.end # mpz_tdiv_q_2exp


.sub 'mpz_tdiv_r_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 946
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 947
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_r_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 948
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 949
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_r_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 950
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tdiv_r_2exp'
.annotate 'line', 952
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 953

.end # mpz_tdiv_r_2exp


.sub 'mpz_mod'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 966
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 967
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_mod"
    throw $P2
  __label_1: # endif
.annotate 'line', 968
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 969
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_mod"
    throw $P2
  __label_2: # endif
.annotate 'line', 970
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 971
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_mod"
    throw $P2
  __label_3: # endif
.annotate 'line', 972
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_mod'
.annotate 'line', 974
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 975

.end # mpz_mod


.sub 'mpz_mod_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 978
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 979
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_mod_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 980
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 981
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_mod_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 982
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fdiv_r_ui'
.annotate 'line', 984
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 985

.end # mpz_mod_ui


.sub 'mpz_divexact'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 998
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 999
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_divexact"
    throw $P2
  __label_1: # endif
.annotate 'line', 1000
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1001
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divexact"
    throw $P2
  __label_2: # endif
.annotate 'line', 1002
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1003
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_divexact"
    throw $P2
  __label_3: # endif
.annotate 'line', 1004
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divexact'
.annotate 'line', 1006
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1007

.end # mpz_divexact


.sub 'mpz_divexact_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1010
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1011
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_divexact_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1012
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1013
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divexact_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1014
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divexact_ui'
.annotate 'line', 1016
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1017

.end # mpz_divexact_ui


.sub 'mpz_divisible_p'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1032
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1033
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divisible_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1034
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1035
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_divisible_p"
    throw $P2
  __label_2: # endif
.annotate 'line', 1036
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divisible_p'
.annotate 'line', 1038
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1039

.end # mpz_divisible_p


.sub 'mpz_divisible_ui_p'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1042
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1043
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divisible_ui_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1044
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divisible_ui_p'
.annotate 'line', 1046
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1047

.end # mpz_divisible_ui_p


.sub 'mpz_divisible_2exp_p'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1050
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1051
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divisible_2exp_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1052
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_divisible_2exp_p'
.annotate 'line', 1054
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1055

.end # mpz_divisible_2exp_p


.sub 'mpz_congruent_p'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1070
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1071
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_congruent_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1072
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1073
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for c in mpz_congruent_p"
    throw $P2
  __label_2: # endif
.annotate 'line', 1074
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1075
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_congruent_p"
    throw $P2
  __label_3: # endif
.annotate 'line', 1076
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_congruent_p'
.annotate 'line', 1078
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4)
# }
.annotate 'line', 1079

.end # mpz_congruent_p


.sub 'mpz_congruent_ui_p'
        .param pmc __ARG_1
        .param int __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1082
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1083
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_congruent_ui_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1084
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_congruent_ui_p'
.annotate 'line', 1086
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1087

.end # mpz_congruent_ui_p


.sub 'mpz_congruent_2exp_p'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1090
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1091
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_congruent_2exp_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1092
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1093
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for c in mpz_congruent_2exp_p"
    throw $P2
  __label_2: # endif
.annotate 'line', 1094
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_congruent_2exp_p'
.annotate 'line', 1096
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1097

.end # mpz_congruent_2exp_p


.sub 'mpz_powm'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 1110
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1111
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_powm"
    throw $P2
  __label_1: # endif
.annotate 'line', 1112
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1113
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_powm"
    throw $P2
  __label_2: # endif
.annotate 'line', 1114
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1115
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for exp in mpz_powm"
    throw $P2
  __label_3: # endif
.annotate 'line', 1116
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 1117
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for mod in mpz_powm"
    throw $P2
  __label_4: # endif
.annotate 'line', 1118
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_powm'
.annotate 'line', 1120
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 1121

.end # mpz_powm


.sub 'mpz_powm_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 1124
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1125
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_powm_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1126
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1127
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_powm_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1128
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1129
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for mod in mpz_powm_ui"
    throw $P2
  __label_3: # endif
.annotate 'line', 1130
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_powm_ui'
.annotate 'line', 1132
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_4, 'ptr'
    $P1($P2, $P3, __ARG_3, $P4)
# }
.annotate 'line', 1133

.end # mpz_powm_ui


.sub 'mpz_powm_sec'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 1144
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1145
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_powm_sec"
    throw $P2
  __label_1: # endif
.annotate 'line', 1146
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1147
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_powm_sec"
    throw $P2
  __label_2: # endif
.annotate 'line', 1148
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1149
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for exp in mpz_powm_sec"
    throw $P2
  __label_3: # endif
.annotate 'line', 1150
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 1151
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for mod in mpz_powm_sec"
    throw $P2
  __label_4: # endif
.annotate 'line', 1152
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_powm_sec'
.annotate 'line', 1154
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 1155

.end # mpz_powm_sec


.sub 'mpz_pow_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1168
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1169
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_pow_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1170
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1171
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_pow_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1172
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_pow_ui'
.annotate 'line', 1174
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1175

.end # mpz_pow_ui


.sub 'mpz_ui_pow_ui'
        .param pmc __ARG_1
        .param int __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1178
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1179
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_ui_pow_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1180
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_ui_pow_ui'
.annotate 'line', 1182
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1183

.end # mpz_ui_pow_ui


.sub 'mpz_root'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1194
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1195
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_root"
    throw $P2
  __label_1: # endif
.annotate 'line', 1196
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1197
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_root"
    throw $P2
  __label_2: # endif
.annotate 'line', 1198
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_root'
.annotate 'line', 1200
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1201

.end # mpz_root


.sub 'mpz_rootrem'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 1212
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1213
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for root in mpz_rootrem"
    throw $P2
  __label_1: # endif
.annotate 'line', 1214
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1215
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rem in mpz_rootrem"
    throw $P2
  __label_2: # endif
.annotate 'line', 1216
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1217
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for u in mpz_rootrem"
    throw $P2
  __label_3: # endif
.annotate 'line', 1218
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_rootrem'
.annotate 'line', 1220
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 1221

.end # mpz_rootrem


.sub 'mpz_sqrt'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1232
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1233
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_sqrt"
    throw $P2
  __label_1: # endif
.annotate 'line', 1234
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1235
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_sqrt"
    throw $P2
  __label_2: # endif
.annotate 'line', 1236
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sqrt'
.annotate 'line', 1238
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 1239

.end # mpz_sqrt


.sub 'mpz_sqrtrem'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1250
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1251
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop1 in mpz_sqrtrem"
    throw $P2
  __label_1: # endif
.annotate 'line', 1252
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1253
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop2 in mpz_sqrtrem"
    throw $P2
  __label_2: # endif
.annotate 'line', 1254
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1255
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_sqrtrem"
    throw $P2
  __label_3: # endif
.annotate 'line', 1256
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sqrtrem'
.annotate 'line', 1258
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1259

.end # mpz_sqrtrem


.sub 'mpz_perfect_power_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1270
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1271
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_perfect_power_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1272
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_perfect_power_p'
.annotate 'line', 1274
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1275

.end # mpz_perfect_power_p


.sub 'mpz_perfect_square_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1286
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1287
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_perfect_square_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1288
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_perfect_square_p'
.annotate 'line', 1290
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1291

.end # mpz_perfect_square_p


.sub 'mpz_probab_prime_p'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1302
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1303
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_probab_prime_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1304
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_probab_prime_p'
.annotate 'line', 1306
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1307

.end # mpz_probab_prime_p


.sub 'mpz_nextprime'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1318
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1319
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_nextprime"
    throw $P2
  __label_1: # endif
.annotate 'line', 1320
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1321
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_nextprime"
    throw $P2
  __label_2: # endif
.annotate 'line', 1322
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_nextprime'
.annotate 'line', 1324
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 1325

.end # mpz_nextprime


.sub 'mpz_gcd'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1336
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1337
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_gcd"
    throw $P2
  __label_1: # endif
.annotate 'line', 1338
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1339
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_gcd"
    throw $P2
  __label_2: # endif
.annotate 'line', 1340
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1341
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_gcd"
    throw $P2
  __label_3: # endif
.annotate 'line', 1342
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_gcd'
.annotate 'line', 1344
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1345

.end # mpz_gcd


.sub 'mpz_gcd_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1356
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1357
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_gcd_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1358
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1359
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_gcd_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1360
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_gcd_ui'
.annotate 'line', 1362
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1363

.end # mpz_gcd_ui


.sub 'mpz_gcdext'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
        .param pmc __ARG_5
# Body
# {
.annotate 'line', 1374
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1375
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for g in mpz_gcdext"
    throw $P2
  __label_1: # endif
.annotate 'line', 1376
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1377
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for s in mpz_gcdext"
    throw $P2
  __label_2: # endif
.annotate 'line', 1378
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1379
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for t in mpz_gcdext"
    throw $P2
  __label_3: # endif
.annotate 'line', 1380
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 1381
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_gcdext"
    throw $P2
  __label_4: # endif
.annotate 'line', 1382
    isa $I2, __ARG_5, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_5
# predefined Error
.annotate 'line', 1383
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_gcdext"
    throw $P2
  __label_5: # endif
.annotate 'line', 1384
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_gcdext'
.annotate 'line', 1386
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    getattribute $P6, __ARG_5, 'ptr'
    $P1($P2, $P3, $P4, $P5, $P6)
# }
.annotate 'line', 1387

.end # mpz_gcdext


.sub 'mpz_lcm'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1400
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1401
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_lcm"
    throw $P2
  __label_1: # endif
.annotate 'line', 1402
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1403
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_lcm"
    throw $P2
  __label_2: # endif
.annotate 'line', 1404
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1405
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_lcm"
    throw $P2
  __label_3: # endif
.annotate 'line', 1406
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_lcm'
.annotate 'line', 1408
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1409

.end # mpz_lcm


.sub 'mpz_lcm_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1412
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1413
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_lcm_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1414
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1415
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_lcm_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1416
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_lcm_ui'
.annotate 'line', 1418
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1419

.end # mpz_lcm_ui


.sub 'mpz_invert'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1430
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1431
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_invert"
    throw $P2
  __label_1: # endif
.annotate 'line', 1432
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1433
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_invert"
    throw $P2
  __label_2: # endif
.annotate 'line', 1434
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1435
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_invert"
    throw $P2
  __label_3: # endif
.annotate 'line', 1436
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_invert'
.annotate 'line', 1438
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4)
# }
.annotate 'line', 1439

.end # mpz_invert


.sub 'mpz_jacobi'
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
    $P2['message'] = "incorrect type for a in mpz_jacobi"
    throw $P2
  __label_1: # endif
.annotate 'line', 1452
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1453
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_jacobi"
    throw $P2
  __label_2: # endif
.annotate 'line', 1454
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_jacobi'
.annotate 'line', 1456
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1457

.end # mpz_jacobi


.sub 'mpz_legendre'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1468
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1469
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_legendre"
    throw $P2
  __label_1: # endif
.annotate 'line', 1470
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1471
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for p in mpz_legendre"
    throw $P2
  __label_2: # endif
.annotate 'line', 1472
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_jacobi'
.annotate 'line', 1474
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1475

.end # mpz_legendre


.sub 'mpz_kronecker'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1494
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1495
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_kronecker"
    throw $P2
  __label_1: # endif
.annotate 'line', 1496
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1497
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_kronecker"
    throw $P2
  __label_2: # endif
.annotate 'line', 1498
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_jacobi'
.annotate 'line', 1500
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1501

.end # mpz_kronecker


.sub 'mpz_kronecker_si'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1504
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1505
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_kronecker_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 1506
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_kronecker_si'
.annotate 'line', 1508
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1509

.end # mpz_kronecker_si


.sub 'mpz_kronecker_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1512
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1513
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_kronecker_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1514
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_kronecker_ui'
.annotate 'line', 1516
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1517

.end # mpz_kronecker_ui


.sub 'mpz_si_kronecker'
        .param int __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1520
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1521
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_si_kronecker"
    throw $P2
  __label_1: # endif
.annotate 'line', 1522
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_si_kronecker'
.annotate 'line', 1524
    getattribute $P2, __ARG_2, 'ptr'
    .tailcall $P1(__ARG_1, $P2)
# }
.annotate 'line', 1525

.end # mpz_si_kronecker


.sub 'mpz_ui_kronecker'
        .param int __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1528
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1529
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_ui_kronecker"
    throw $P2
  __label_1: # endif
.annotate 'line', 1530
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_ui_kronecker'
.annotate 'line', 1532
    getattribute $P2, __ARG_2, 'ptr'
    .tailcall $P1(__ARG_1, $P2)
# }
.annotate 'line', 1533

.end # mpz_ui_kronecker


.sub 'mpz_remove'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1544
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1545
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_remove"
    throw $P2
  __label_1: # endif
.annotate 'line', 1546
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1547
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_remove"
    throw $P2
  __label_2: # endif
.annotate 'line', 1548
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1549
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for f in mpz_remove"
    throw $P2
  __label_3: # endif
.annotate 'line', 1550
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_remove'
.annotate 'line', 1552
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4)
# }
.annotate 'line', 1553

.end # mpz_remove


.sub 'mpz_fac_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1564
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1565
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_fac_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1566
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fac_ui'
.annotate 'line', 1568
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1569

.end # mpz_fac_ui


.sub 'mpz_bin_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1582
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1583
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_bin_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1584
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1585
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_bin_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1586
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_bin_ui'
.annotate 'line', 1588
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1589

.end # mpz_bin_ui


.sub 'mpz_bin_uiui'
        .param pmc __ARG_1
        .param int __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1592
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1593
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_bin_uiui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1594
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_bin_uiui'
.annotate 'line', 1596
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1597

.end # mpz_bin_uiui


.sub 'mpz_fib_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1610
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1611
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for fn in mpz_fib_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1612
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fib_ui'
.annotate 'line', 1614
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1615

.end # mpz_fib_ui


.sub 'mpz_fib2_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1618
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1619
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for fn in mpz_fib2_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1620
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1621
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for fnsub1 in mpz_fib2_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1622
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fib2_ui'
.annotate 'line', 1624
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1625

.end # mpz_fib2_ui


.sub 'mpz_lucnum_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1638
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1639
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for ln in mpz_lucnum_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1640
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_lucnum_ui'
.annotate 'line', 1642
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1643

.end # mpz_lucnum_ui


.sub 'mpz_lucnum2_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1646
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1647
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for ln in mpz_lucnum2_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1648
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1649
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for lnsub1 in mpz_lucnum2_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1650
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_lucnum2_ui'
.annotate 'line', 1652
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1653

.end # mpz_lucnum2_ui


.sub 'mpz_cmp'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1666
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1667
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmp"
    throw $P2
  __label_1: # endif
.annotate 'line', 1668
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1669
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_cmp"
    throw $P2
  __label_2: # endif
.annotate 'line', 1670
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmp'
.annotate 'line', 1672
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1673

.end # mpz_cmp


.sub 'mpz_cmp_d'
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 1676
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1677
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmp_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 1678
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmp_d'
.annotate 'line', 1680
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1681

.end # mpz_cmp_d


.sub 'mpz_cmpabs'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1696
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1697
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmpabs"
    throw $P2
  __label_1: # endif
.annotate 'line', 1698
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1699
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_cmpabs"
    throw $P2
  __label_2: # endif
.annotate 'line', 1700
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmpabs'
.annotate 'line', 1702
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1703

.end # mpz_cmpabs


.sub 'mpz_cmpabs_d'
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 1706
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1707
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmpabs_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 1708
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmpabs_d'
.annotate 'line', 1710
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1711

.end # mpz_cmpabs_d


.sub 'mpz_cmpabs_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1714
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1715
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmpabs_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1716
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_cmpabs_ui'
.annotate 'line', 1718
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1719

.end # mpz_cmpabs_ui


.sub 'mpz_and'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1730
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1731
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_and"
    throw $P2
  __label_1: # endif
.annotate 'line', 1732
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1733
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_and"
    throw $P2
  __label_2: # endif
.annotate 'line', 1734
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1735
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_and"
    throw $P2
  __label_3: # endif
.annotate 'line', 1736
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_and'
.annotate 'line', 1738
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1739

.end # mpz_and


.sub 'mpz_ior'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1750
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1751
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_ior"
    throw $P2
  __label_1: # endif
.annotate 'line', 1752
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1753
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_ior"
    throw $P2
  __label_2: # endif
.annotate 'line', 1754
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1755
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_ior"
    throw $P2
  __label_3: # endif
.annotate 'line', 1756
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_ior'
.annotate 'line', 1758
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1759

.end # mpz_ior


.sub 'mpz_xor'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1770
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1771
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_xor"
    throw $P2
  __label_1: # endif
.annotate 'line', 1772
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1773
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_xor"
    throw $P2
  __label_2: # endif
.annotate 'line', 1774
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1775
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_xor"
    throw $P2
  __label_3: # endif
.annotate 'line', 1776
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_xor'
.annotate 'line', 1778
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1779

.end # mpz_xor


.sub 'mpz_com'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1790
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1791
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_com"
    throw $P2
  __label_1: # endif
.annotate 'line', 1792
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1793
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_com"
    throw $P2
  __label_2: # endif
.annotate 'line', 1794
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_com'
.annotate 'line', 1796
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 1797

.end # mpz_com


.sub 'mpz_popcount'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1808
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1809
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_popcount"
    throw $P2
  __label_1: # endif
.annotate 'line', 1810
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_popcount'
.annotate 'line', 1812
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1813

.end # mpz_popcount


.sub 'mpz_hamdist'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1824
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1825
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_hamdist"
    throw $P2
  __label_1: # endif
.annotate 'line', 1826
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1827
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_hamdist"
    throw $P2
  __label_2: # endif
.annotate 'line', 1828
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_hamdist'
.annotate 'line', 1830
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1831

.end # mpz_hamdist


.sub 'mpz_scan0'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1844
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1845
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_scan0"
    throw $P2
  __label_1: # endif
.annotate 'line', 1846
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_scan0'
.annotate 'line', 1848
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1849

.end # mpz_scan0


.sub 'mpz_scan1'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1852
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1853
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_scan1"
    throw $P2
  __label_1: # endif
.annotate 'line', 1854
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_scan1'
.annotate 'line', 1856
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1857

.end # mpz_scan1


.sub 'mpz_setbit'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1868
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1869
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_setbit"
    throw $P2
  __label_1: # endif
.annotate 'line', 1870
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_setbit'
.annotate 'line', 1872
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1873

.end # mpz_setbit


.sub 'mpz_clrbit'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1884
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1885
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_clrbit"
    throw $P2
  __label_1: # endif
.annotate 'line', 1886
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_clrbit'
.annotate 'line', 1888
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1889

.end # mpz_clrbit


.sub 'mpz_combit'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1900
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1901
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_combit"
    throw $P2
  __label_1: # endif
.annotate 'line', 1902
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_combit'
.annotate 'line', 1904
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1905

.end # mpz_combit


.sub 'mpz_tstbit'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1916
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1917
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_tstbit"
    throw $P2
  __label_1: # endif
.annotate 'line', 1918
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_tstbit'
.annotate 'line', 1920
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1921

.end # mpz_tstbit


.sub 'mpz_urandomb'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1932
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1933
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_urandomb"
    throw $P2
  __label_1: # endif
.annotate 'line', 1934
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_urandomb'
.annotate 'line', 1936
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1937

.end # mpz_urandomb


.sub 'mpz_urandomm'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1948
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1949
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_urandomm"
    throw $P2
  __label_1: # endif
.annotate 'line', 1950
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1951
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_urandomm"
    throw $P2
  __label_2: # endif
.annotate 'line', 1952
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_urandomm'
.annotate 'line', 1954
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_3, 'ptr'
    $P1($P2, __ARG_2, $P3)
# }
.annotate 'line', 1955

.end # mpz_urandomm


.sub 'mpz_rrandomb'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1966
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1967
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_rrandomb"
    throw $P2
  __label_1: # endif
.annotate 'line', 1968
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_rrandomb'
.annotate 'line', 1970
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1971

.end # mpz_rrandomb


.sub 'mpz_fits_ulong_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1992
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1993
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_ulong_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1994
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_ulong_p'
.annotate 'line', 1996
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1997

.end # mpz_fits_ulong_p


.sub 'mpz_fits_slong_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2000
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2001
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_slong_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 2002
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_slong_p'
.annotate 'line', 2004
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2005

.end # mpz_fits_slong_p


.sub 'mpz_fits_uint_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2008
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2009
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_uint_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 2010
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_uint_p'
.annotate 'line', 2012
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2013

.end # mpz_fits_uint_p


.sub 'mpz_fits_sint_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2016
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2017
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_sint_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 2018
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_sint_p'
.annotate 'line', 2020
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2021

.end # mpz_fits_sint_p


.sub 'mpz_fits_ushort_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2024
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2025
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_ushort_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 2026
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_ushort_p'
.annotate 'line', 2028
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2029

.end # mpz_fits_ushort_p


.sub 'mpz_fits_sshort_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2032
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2033
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_sshort_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 2034
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_fits_sshort_p'
.annotate 'line', 2036
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2037

.end # mpz_fits_sshort_p


.sub 'mpz_sizeinbase'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 2048
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2049
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_sizeinbase"
    throw $P2
  __label_1: # endif
.annotate 'line', 2050
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_sizeinbase'
.annotate 'line', 2052
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 2053

.end # mpz_sizeinbase


.sub 'mpz_getlimbn'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 2064
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2065
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_getlimbn"
    throw $P2
  __label_1: # endif
.annotate 'line', 2066
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_getlimbn'
.annotate 'line', 2068
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 2069

.end # mpz_getlimbn


.sub 'mpz_size'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2080
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2081
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_size"
    throw $P2
  __label_1: # endif
.annotate 'line', 2082
    get_hll_global $P1, [ 'GMP'; 'Raw' ] , '__gmpz_size'
.annotate 'line', 2084
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2085

.end # mpz_size

# End generated code
