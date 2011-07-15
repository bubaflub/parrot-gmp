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
    get_hll_global $P3, [ 'GMP'; 'Common' ], 'gmpz_t'
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
    get_hll_global $P4, [ 'GMP'; 'Raw' ], '__gmpz_init'
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
    get_hll_global $P5, [ 'GMP'; 'Raw' ], '__gmpz_init'
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
    get_hll_global $P6, [ 'GMP'; 'Raw' ], '__gmpz_init'
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
    get_hll_global $P2, [ 'GMP'; 'Raw' ], '__gmpz_clear'
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


.sub 'get_number' :method :vtable
.const 'Sub' WSubId_4 = "WSubId_4"
# Body
# {
.annotate 'line', 62
    .tailcall WSubId_4(self)
# }
.annotate 'line', 63

.end # get_number


.sub 'get_bool' :method :vtable
.const 'Sub' WSubId_5 = "WSubId_5"
# Body
# {
.annotate 'line', 66
    .tailcall WSubId_5(self)
# }
.annotate 'line', 67

.end # get_bool


.sub 'set_integer_native' :method :vtable
        .param int __ARG_1
.const 'Sub' WSubId_6 = "WSubId_6"
# Body
# {
.annotate 'line', 70
    WSubId_6(self, __ARG_1)
# }
.annotate 'line', 71

.end # set_integer_native


.sub 'set_number_native' :method :vtable
        .param num __ARG_1
.const 'Sub' WSubId_7 = "WSubId_7"
# Body
# {
.annotate 'line', 74
    WSubId_7(self, __ARG_1)
# }
.annotate 'line', 75

.end # set_number_native


.sub 'set_string_native' :method :vtable
        .param string __ARG_1
.const 'Sub' WSubId_1 = "WSubId_1"
# Body
# {
.annotate 'line', 78
# i: $I1
    $P1 = WSubId_1(self, __ARG_1, 10)
    set $I1, $P1
# }
.annotate 'line', 79

.end # set_string_native


.sub 'add' :method :vtable
        .param pmc __ARG_1
        .param pmc __ARG_2
.const 'Sub' WSubId_8 = "WSubId_8"
# Body
# {
.annotate 'line', 82
    WSubId_8(__ARG_2, self, __ARG_1)
.annotate 'line', 83
    .return(__ARG_2)
# }
.annotate 'line', 84

.end # add


.sub 'add_int' :method :vtable
        .param int __ARG_1
        .param pmc __ARG_2
.const 'Sub' WSubId_9 = "WSubId_9"
# Body
# {
.annotate 'line', 87
    WSubId_9(__ARG_2, self, __ARG_1)
.annotate 'line', 88
    .return(__ARG_2)
# }
.annotate 'line', 89

.end # add_int


.sub 'add_float' :method :vtable
        .param num __ARG_1
        .param pmc __ARG_2
.const 'Sub' WSubId_9 = "WSubId_9"
# Body
# {
.annotate 'line', 92
# predefined int
    set $I1, __ARG_1
    WSubId_9(__ARG_2, self, $I1)
.annotate 'line', 93
    .return(__ARG_2)
# }
.annotate 'line', 94

.end # add_float


.sub 'i_add' :method :vtable
        .param pmc __ARG_1
.const 'Sub' WSubId_8 = "WSubId_8"
# Body
# {
.annotate 'line', 97
    WSubId_8(self, self, __ARG_1)
# }
.annotate 'line', 98

.end # i_add


.sub 'i_add_int' :method :vtable
        .param int __ARG_1
.const 'Sub' WSubId_9 = "WSubId_9"
# Body
# {
.annotate 'line', 101
    WSubId_9(self, self, __ARG_1)
# }
.annotate 'line', 102

.end # i_add_int


.sub 'i_add_float' :method :vtable
        .param num __ARG_1
.const 'Sub' WSubId_9 = "WSubId_9"
# Body
# {
.annotate 'line', 105
# predefined int
    set $I1, __ARG_1
    WSubId_9(self, self, $I1)
# }
.annotate 'line', 106

.end # i_add_float


.sub 'subtract' :method :vtable
        .param pmc __ARG_1
        .param pmc __ARG_2
.const 'Sub' WSubId_10 = "WSubId_10"
# Body
# {
.annotate 'line', 109
    WSubId_10(__ARG_2, self, __ARG_1)
.annotate 'line', 110
    .return(__ARG_2)
# }
.annotate 'line', 111

.end # subtract


.sub 'subtract_int' :method :vtable
        .param int __ARG_1
        .param pmc __ARG_2
.const 'Sub' WSubId_11 = "WSubId_11"
# Body
# {
.annotate 'line', 114
    WSubId_11(__ARG_2, self, __ARG_1)
.annotate 'line', 115
    .return(__ARG_2)
# }
.annotate 'line', 116

.end # subtract_int


.sub 'subtract_float' :method :vtable
        .param num __ARG_1
        .param pmc __ARG_2
.const 'Sub' WSubId_11 = "WSubId_11"
# Body
# {
.annotate 'line', 119
# predefined int
    set $I1, __ARG_1
    WSubId_11(__ARG_2, self, $I1)
.annotate 'line', 120
    .return(__ARG_2)
# }
.annotate 'line', 121

.end # subtract_float


.sub 'i_subtract' :method :vtable
        .param pmc __ARG_1
.const 'Sub' WSubId_10 = "WSubId_10"
# Body
# {
.annotate 'line', 124
    WSubId_10(self, self, __ARG_1)
# }
.annotate 'line', 125

.end # i_subtract


.sub 'i_subtract_int' :method :vtable
        .param int __ARG_1
.const 'Sub' WSubId_11 = "WSubId_11"
# Body
# {
.annotate 'line', 128
    WSubId_11(self, self, __ARG_1)
# }
.annotate 'line', 129

.end # i_subtract_int


.sub 'i_subtract_float' :method :vtable
        .param num __ARG_1
.const 'Sub' WSubId_11 = "WSubId_11"
# Body
# {
.annotate 'line', 132
# predefined int
    set $I1, __ARG_1
    WSubId_11(self, self, $I1)
# }
.annotate 'line', 133

.end # i_subtract_float


.sub 'multiply' :method :vtable
        .param pmc __ARG_1
        .param pmc __ARG_2
.const 'Sub' WSubId_12 = "WSubId_12"
# Body
# {
.annotate 'line', 136
    WSubId_12(__ARG_2, self, __ARG_1)
.annotate 'line', 137
    .return(__ARG_2)
# }
.annotate 'line', 138

.end # multiply


.sub 'multiply_int' :method :vtable
        .param int __ARG_1
        .param pmc __ARG_2
.const 'Sub' WSubId_13 = "WSubId_13"
# Body
# {
.annotate 'line', 141
    WSubId_13(__ARG_2, self, __ARG_1)
.annotate 'line', 142
    .return(__ARG_2)
# }
.annotate 'line', 143

.end # multiply_int


.sub 'multiply_float' :method :vtable
        .param num __ARG_1
        .param pmc __ARG_2
.const 'Sub' WSubId_13 = "WSubId_13"
# Body
# {
.annotate 'line', 146
# predefined int
    set $I1, __ARG_1
    WSubId_13(__ARG_2, self, $I1)
.annotate 'line', 147
    .return(__ARG_2)
# }
.annotate 'line', 148

.end # multiply_float


.sub 'i_multiply' :method :vtable
        .param pmc __ARG_1
.const 'Sub' WSubId_12 = "WSubId_12"
# Body
# {
.annotate 'line', 151
    WSubId_12(self, self, __ARG_1)
# }
.annotate 'line', 152

.end # i_multiply


.sub 'i_multiply_int' :method :vtable
        .param int __ARG_1
.const 'Sub' WSubId_13 = "WSubId_13"
# Body
# {
.annotate 'line', 155
    WSubId_13(self, self, __ARG_1)
# }
.annotate 'line', 156

.end # i_multiply_int


.sub 'i_multiply_float' :method :vtable
        .param num __ARG_1
.const 'Sub' WSubId_13 = "WSubId_13"
# Body
# {
.annotate 'line', 159
# predefined int
    set $I1, __ARG_1
    WSubId_13(self, self, $I1)
# }
.annotate 'line', 160

.end # i_multiply_float


.sub 'divide' :method :vtable
        .param pmc __ARG_1
        .param pmc __ARG_2
.const 'Sub' WSubId_14 = "WSubId_14"
# Body
# {
.annotate 'line', 163
    WSubId_14(__ARG_2, self, __ARG_1)
.annotate 'line', 164
    .return(__ARG_2)
# }
.annotate 'line', 165

.end # divide


.sub 'divide_int' :method :vtable
        .param int __ARG_1
        .param pmc __ARG_2
.const 'Sub' WSubId_15 = "WSubId_15"
.const 'Sub' WSubId_13 = "WSubId_13"
# Body
# {
.annotate 'line', 168
    WSubId_15(__ARG_2, self, __ARG_1)
.annotate 'line', 169
    ge __ARG_1, 0, __label_1
# {
.annotate 'line', 170
    WSubId_13(__ARG_2, __ARG_2, -1)
# }
  __label_1: # endif
.annotate 'line', 172
    .return(__ARG_2)
# }
.annotate 'line', 173

.end # divide_int


.sub 'divide_float' :method :vtable
        .param num __ARG_1
        .param pmc __ARG_2
.const 'Sub' WSubId_15 = "WSubId_15"
.const 'Sub' WSubId_13 = "WSubId_13"
# Body
# {
.annotate 'line', 176
# predefined int
    set $I1, __ARG_1
    WSubId_15(__ARG_2, self, $I1)
.annotate 'line', 177
    set $N1, 0
    ge __ARG_1, $N1, __label_1
# {
.annotate 'line', 178
    WSubId_13(__ARG_2, __ARG_2, -1)
# }
  __label_1: # endif
.annotate 'line', 180
    .return(__ARG_2)
# }
.annotate 'line', 181

.end # divide_float


.sub 'i_divide' :method :vtable
        .param pmc __ARG_1
.const 'Sub' WSubId_14 = "WSubId_14"
# Body
# {
.annotate 'line', 184
    WSubId_14(self, self, __ARG_1)
# }
.annotate 'line', 185

.end # i_divide


.sub 'i_divide_int' :method :vtable
        .param int __ARG_1
.const 'Sub' WSubId_15 = "WSubId_15"
.const 'Sub' WSubId_13 = "WSubId_13"
# Body
# {
.annotate 'line', 188
    WSubId_15(self, self, __ARG_1)
.annotate 'line', 189
    ge __ARG_1, 0, __label_1
# {
.annotate 'line', 190
    WSubId_13(self, self, -1)
# }
  __label_1: # endif
# }
.annotate 'line', 192

.end # i_divide_int


.sub 'i_divide_float' :method :vtable
        .param num __ARG_1
.const 'Sub' WSubId_15 = "WSubId_15"
.const 'Sub' WSubId_13 = "WSubId_13"
# Body
# {
.annotate 'line', 195
# predefined int
    set $I1, __ARG_1
    WSubId_15(self, self, $I1)
.annotate 'line', 196
    set $N1, 0
    ge __ARG_1, $N1, __label_1
# {
.annotate 'line', 197
    WSubId_13(self, self, -1)
# }
  __label_1: # endif
# }
.annotate 'line', 199

.end # i_divide_float


.sub 'floor_divide' :method :vtable
        .param pmc __ARG_1
        .param pmc __ARG_2
.const 'Sub' WSubId_16 = "WSubId_16"
# Body
# {
.annotate 'line', 202
    WSubId_16(__ARG_2, self, __ARG_1)
.annotate 'line', 203
    .return(__ARG_2)
# }
.annotate 'line', 204

.end # floor_divide


.sub 'floor_divide_int' :method :vtable
        .param int __ARG_1
        .param pmc __ARG_2
.const 'Sub' WSubId_17 = "WSubId_17"
.const 'Sub' WSubId_13 = "WSubId_13"
# Body
# {
.annotate 'line', 207
    WSubId_17(__ARG_2, self, __ARG_1)
.annotate 'line', 208
    ge __ARG_1, 0, __label_1
# {
.annotate 'line', 209
    WSubId_13(__ARG_2, __ARG_2, -1)
# }
  __label_1: # endif
.annotate 'line', 211
    .return(__ARG_2)
# }
.annotate 'line', 212

.end # floor_divide_int


.sub 'floor_divide_float' :method :vtable
        .param num __ARG_1
        .param pmc __ARG_2
.const 'Sub' WSubId_17 = "WSubId_17"
.const 'Sub' WSubId_13 = "WSubId_13"
# Body
# {
.annotate 'line', 215
# predefined int
    set $I1, __ARG_1
    WSubId_17(__ARG_2, self, $I1)
.annotate 'line', 216
    set $N1, 0
    ge __ARG_1, $N1, __label_1
# {
.annotate 'line', 217
    WSubId_13(__ARG_2, __ARG_2, -1)
# }
  __label_1: # endif
.annotate 'line', 219
    .return(__ARG_2)
# }
.annotate 'line', 220

.end # floor_divide_float


.sub 'i_floor_divide' :method :vtable
        .param pmc __ARG_1
.const 'Sub' WSubId_16 = "WSubId_16"
# Body
# {
.annotate 'line', 223
    WSubId_16(self, self, __ARG_1)
# }
.annotate 'line', 224

.end # i_floor_divide


.sub 'i_floor_divide_int' :method :vtable
        .param int __ARG_1
.const 'Sub' WSubId_17 = "WSubId_17"
.const 'Sub' WSubId_13 = "WSubId_13"
# Body
# {
.annotate 'line', 227
    WSubId_17(self, self, __ARG_1)
.annotate 'line', 228
    ge __ARG_1, 0, __label_1
# {
.annotate 'line', 229
    WSubId_13(self, self, -1)
# }
  __label_1: # endif
# }
.annotate 'line', 231

.end # i_floor_divide_int


.sub 'i_floor_divide_float' :method :vtable
        .param num __ARG_1
.const 'Sub' WSubId_17 = "WSubId_17"
.const 'Sub' WSubId_13 = "WSubId_13"
# Body
# {
.annotate 'line', 234
# predefined int
    set $I1, __ARG_1
    WSubId_17(self, self, $I1)
.annotate 'line', 235
    set $N1, 0
    ge __ARG_1, $N1, __label_1
# {
.annotate 'line', 236
    WSubId_13(self, self, -1)
# }
  __label_1: # endif
# }
.annotate 'line', 238

.end # i_floor_divide_float


.sub 'modulus' :method :vtable
        .param pmc __ARG_1
        .param pmc __ARG_2
.const 'Sub' WSubId_18 = "WSubId_18"
# Body
# {
.annotate 'line', 241
    WSubId_18(__ARG_2, self, __ARG_1)
.annotate 'line', 242
    .return(__ARG_2)
# }
.annotate 'line', 243

.end # modulus


.sub 'modulus_int' :method :vtable
        .param int __ARG_1
        .param pmc __ARG_2
.const 'Sub' WSubId_19 = "WSubId_19"
# Body
# {
.annotate 'line', 246
    WSubId_19(__ARG_2, self, __ARG_1)
.annotate 'line', 247
    .return(__ARG_2)
# }
.annotate 'line', 248

.end # modulus_int


.sub 'modulus_float' :method :vtable
        .param num __ARG_1
        .param pmc __ARG_2
.const 'Sub' WSubId_19 = "WSubId_19"
# Body
# {
.annotate 'line', 251
# predefined int
    set $I1, __ARG_1
    WSubId_19(__ARG_2, self, $I1)
.annotate 'line', 252
    .return(__ARG_2)
# }
.annotate 'line', 253

.end # modulus_float


.sub 'i_modulus' :method :vtable
        .param pmc __ARG_1
.const 'Sub' WSubId_18 = "WSubId_18"
# Body
# {
.annotate 'line', 256
    WSubId_18(self, self, __ARG_1)
# }
.annotate 'line', 257

.end # i_modulus


.sub 'i_modulus_int' :method :vtable
        .param int __ARG_1
.const 'Sub' WSubId_19 = "WSubId_19"
# Body
# {
.annotate 'line', 260
    WSubId_19(self, self, __ARG_1)
# }
.annotate 'line', 261

.end # i_modulus_int


.sub 'i_modulus_float' :method :vtable
        .param num __ARG_1
.const 'Sub' WSubId_19 = "WSubId_19"
# Body
# {
.annotate 'line', 264
# predefined int
    set $I1, __ARG_1
    WSubId_19(self, self, $I1)
# }
.annotate 'line', 265

.end # i_modulus_float


.sub 'increment' :method :vtable
.const 'Sub' WSubId_9 = "WSubId_9"
# Body
# {
.annotate 'line', 268
    WSubId_9(self, self, 1)
# }
.annotate 'line', 269

.end # increment


.sub 'decrement' :method :vtable
.const 'Sub' WSubId_11 = "WSubId_11"
# Body
# {
.annotate 'line', 272
    WSubId_11(self, self, 1)
# }
.annotate 'line', 273

.end # decrement


.sub 'absolute' :method :vtable
        .param pmc __ARG_1
.const 'Sub' WSubId_20 = "WSubId_20"
# Body
# {
.annotate 'line', 276
    WSubId_20(__ARG_1, self)
.annotate 'line', 277
    .return(__ARG_1)
# }
.annotate 'line', 278

.end # absolute


.sub 'i_absolute' :method :vtable
.const 'Sub' WSubId_20 = "WSubId_20"
# Body
# {
.annotate 'line', 281
    WSubId_20(self, self)
# }
.annotate 'line', 282

.end # i_absolute


.sub 'neg' :method :vtable
        .param pmc __ARG_1
.const 'Sub' WSubId_21 = "WSubId_21"
# Body
# {
.annotate 'line', 285
    WSubId_21(__ARG_1, self)
.annotate 'line', 286
    .return(__ARG_1)
# }
.annotate 'line', 287

.end # neg


.sub 'i_neg' :method :vtable
.const 'Sub' WSubId_21 = "WSubId_21"
# Body
# {
.annotate 'line', 290
    WSubId_21(self, self)
# }
.annotate 'line', 291

.end # i_neg


.sub 'is_equal' :method :vtable
        .param pmc __ARG_1
.const 'Sub' WSubId_22 = "WSubId_22"
# Body
# {
.annotate 'line', 294
    $P1 = WSubId_22(self, __ARG_1)
    set $I2, $P1
    iseq $I1, $I2, 0
    .return($I1)
# }
.annotate 'line', 295

.end # is_equal


.sub 'is_equal_num' :method :vtable
        .param pmc __ARG_1
.const 'Sub' WSubId_23 = "WSubId_23"
# Body
# {
.annotate 'line', 298
# predefined int
    set $I2, __ARG_1
    $P1 = WSubId_23(self, $I2)
    set $I3, $P1
    iseq $I1, $I3, 0
    .return($I1)
# }
.annotate 'line', 299

.end # is_equal_num


.sub 'is_equal_string' :method :vtable
        .param pmc __ARG_1
.const 'Sub' WSubId_2 = "WSubId_2"
# Body
# {
.annotate 'line', 302
    $P1 = WSubId_2("", 10, self)
    iseq $I1, $P1, __ARG_1
    .return($I1)
# }
.annotate 'line', 303

.end # is_equal_string


.sub 'cmp' :method :vtable
        .param pmc __ARG_1
.const 'Sub' WSubId_22 = "WSubId_22"
# Body
# {
.annotate 'line', 306
# i: $I1
    $P1 = WSubId_22(self, __ARG_1)
    set $I1, $P1
.annotate 'line', 307
    le $I1, 0, __label_1
.annotate 'line', 308
    .return(1)
  __label_1: # endif
.annotate 'line', 309
    ge $I1, 0, __label_2
.annotate 'line', 310
    .return(-1)
  __label_2: # endif
.annotate 'line', 311
    .return(0)
# }
.annotate 'line', 312

.end # cmp


.sub 'cmp_num' :method :vtable
        .param pmc __ARG_1
.const 'Sub' WSubId_23 = "WSubId_23"
# Body
# {
.annotate 'line', 315
# i: $I1
# predefined int
    set $I2, __ARG_1
    $P1 = WSubId_23(self, $I2)
    set $I1, $P1
.annotate 'line', 316
    le $I1, 0, __label_1
.annotate 'line', 317
    .return(1)
  __label_1: # endif
.annotate 'line', 318
    ge $I1, 0, __label_2
.annotate 'line', 319
    .return(-1)
  __label_2: # endif
.annotate 'line', 320
    .return(0)
# }
.annotate 'line', 321

.end # cmp_num


.sub 'cmp_string' :method :vtable
        .param pmc __ARG_1
.const 'Sub' WSubId_2 = "WSubId_2"
# Body
# {
.annotate 'line', 324
# rep: $S1
    $P1 = WSubId_2("", 10, self)
    null $S1
    if_null $P1, __label_1
    set $S1, $P1
  __label_1:
.annotate 'line', 325
    set $S2, __ARG_1
    ge $S1, $S2, __label_2
.annotate 'line', 326
    .return(-1)
  __label_2: # endif
.annotate 'line', 327
    set $S2, __ARG_1
    le $S1, $S2, __label_3
.annotate 'line', 328
    .return(1)
  __label_3: # endif
.annotate 'line', 329
    .return(0)
# }
.annotate 'line', 330

.end # cmp_string

.sub Winxed_class_init :anon :load :init
    newclass $P0, [ 'GMP'; 'Integer' ]
.annotate 'line', 10
    addattribute $P0, 'ptr'
.end
.namespace [ ]

.sub 'mpz_sgn'
        .param pmc __ARG_1
.const 'Sub' WSubId_24 = "WSubId_24"
# Body
# {
.annotate 'line', 343
    isa $I3, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I2, $I3
    unless $I2 goto __label_1
# predefined Error
.annotate 'line', 344
    root_new $P1, ['parrot';'Exception']
    $P1['message'] = "incorrect type for op in mpz_sgn"
    throw $P1
  __label_1: # endif
.annotate 'line', 345
# i: $I1
    $P1 = WSubId_24(__ARG_1, 0)
    set $I1, $P1
.annotate 'line', 346
    le $I1, 0, __label_2
.annotate 'line', 347
    .return(1)
  __label_2: # endif
.annotate 'line', 348
    ge $I1, 0, __label_3
.annotate 'line', 349
    .return(-1)
  __label_3: # endif
.annotate 'line', 350
    .return(0)
# }
.annotate 'line', 351

.end # mpz_sgn


.sub 'mpz_odd_p'
        .param pmc __ARG_1
.const 'Sub' WSubId_25 = "WSubId_25"
# Body
# {
.annotate 'line', 364
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 365
    root_new $P1, ['parrot';'Exception']
    $P1['message'] = "incorrect type for op in mpz_odd_p"
    throw $P1
  __label_1: # endif
.annotate 'line', 366
    .tailcall WSubId_25(__ARG_1, 0)
# }
.annotate 'line', 367

.end # mpz_odd_p


.sub 'mpz_even_p'
        .param pmc __ARG_1
.const 'Sub' WSubId_25 = "WSubId_25"
# Body
# {
.annotate 'line', 370
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 371
    root_new $P1, ['parrot';'Exception']
    $P1['message'] = "incorrect type for op in mpz_even_p"
    throw $P1
  __label_1: # endif
.annotate 'line', 372
    $P1 = WSubId_25(__ARG_1, 0)
    isfalse $I1, $P1
    .return($I1)
# }
.annotate 'line', 373

.end # mpz_even_p


.sub 'mpz_init'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 384
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 385
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_init"
    throw $P2
  __label_1: # endif
.annotate 'line', 386
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_init'
.annotate 'line', 387
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2)
# }
.annotate 'line', 388

.end # mpz_init


.sub 'mpz_init2'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 399
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 400
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_init2"
    throw $P2
  __label_1: # endif
.annotate 'line', 401
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_init2'
.annotate 'line', 402
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 403

.end # mpz_init2


.sub 'mpz_clear'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 414
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 415
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_clear"
    throw $P2
  __label_1: # endif
.annotate 'line', 416
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_clear'
.annotate 'line', 417
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2)
# }
.annotate 'line', 418

.end # mpz_clear


.sub 'mpz_realloc2'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 429
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 430
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for x in mpz_realloc2"
    throw $P2
  __label_1: # endif
.annotate 'line', 431
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_realloc2'
.annotate 'line', 432
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 433

.end # mpz_realloc2


.sub 'mpz_set'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 450
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 451
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set"
    throw $P2
  __label_1: # endif
.annotate 'line', 452
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 453
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_set"
    throw $P2
  __label_2: # endif
.annotate 'line', 454
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_set'
.annotate 'line', 455
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 456

.end # mpz_set


.sub 'mpz_set_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 459
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 460
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 461
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_set_ui'
.annotate 'line', 462
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 463

.end # mpz_set_ui


.sub 'mpz_set_si' :subid('WSubId_6')
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 466
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 467
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 468
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_set_si'
.annotate 'line', 469
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 470

.end # mpz_set_si


.sub 'mpz_set_d' :subid('WSubId_7')
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 473
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 474
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_set_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 475
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_set_d'
.annotate 'line', 476
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 477

.end # mpz_set_d


.sub 'mpz_set_str' :subid('WSubId_1')
        .param pmc __ARG_1
        .param string __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 488
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 489
    root_new $P3, ['parrot';'Exception']
    $P3['message'] = "incorrect type for rop in mpz_set_str"
    throw $P3
  __label_1: # endif
.annotate 'line', 490
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_set_str'
.annotate 'line', 491
    get_hll_global $P2, [ 'GMP'; 'Common' ], 'stoa'
.annotate 'line', 493
    getattribute $P3, __ARG_1, 'ptr'
    $P4 = $P2(__ARG_2)
    .tailcall $P1($P3, $P4, __ARG_3)
# }
.annotate 'line', 494

.end # mpz_set_str


.sub 'mpz_swap'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 505
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 506
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop1 in mpz_swap"
    throw $P2
  __label_1: # endif
.annotate 'line', 507
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 508
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop2 in mpz_swap"
    throw $P2
  __label_2: # endif
.annotate 'line', 509
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_swap'
.annotate 'line', 510
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 511

.end # mpz_swap


.sub 'mpz_init_set'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 528
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 529
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set"
    throw $P2
  __label_1: # endif
.annotate 'line', 530
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 531
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_init_set"
    throw $P2
  __label_2: # endif
.annotate 'line', 532
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_init_set'
.annotate 'line', 533
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 534

.end # mpz_init_set


.sub 'mpz_init_set_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 537
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 538
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 539
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_init_set_ui'
.annotate 'line', 540
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 541

.end # mpz_init_set_ui


.sub 'mpz_init_set_si'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 544
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 545
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 546
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_init_set_si'
.annotate 'line', 547
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 548

.end # mpz_init_set_si


.sub 'mpz_init_set_d'
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 551
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 552
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_init_set_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 553
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_init_set_d'
.annotate 'line', 554
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 555

.end # mpz_init_set_d


.sub 'mpz_init_set_str'
        .param pmc __ARG_1
        .param string __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 566
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 567
    root_new $P3, ['parrot';'Exception']
    $P3['message'] = "incorrect type for rop in mpz_init_set_str"
    throw $P3
  __label_1: # endif
.annotate 'line', 568
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_init_set_str'
.annotate 'line', 569
    get_hll_global $P2, [ 'GMP'; 'Common' ], 'stoa'
.annotate 'line', 571
    getattribute $P3, __ARG_1, 'ptr'
    $P4 = $P2(__ARG_2)
    .tailcall $P1($P3, $P4, __ARG_3)
# }
.annotate 'line', 572

.end # mpz_init_set_str


.sub 'mpz_get_ui' :subid('WSubId_5')
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 583
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 584
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 585
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_get_ui'
.annotate 'line', 586
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 587

.end # mpz_get_ui


.sub 'mpz_get_si' :subid('WSubId_3')
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 598
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 599
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 600
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_get_si'
.annotate 'line', 601
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 602

.end # mpz_get_si


.sub 'mpz_get_d' :subid('WSubId_4')
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 613
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 614
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 615
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_get_d'
.annotate 'line', 616
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 617

.end # mpz_get_d


.sub 'mpz_get_d_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 628
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 629
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_get_d_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 630
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_get_d_2exp'
.annotate 'line', 631
    getattribute $P2, __ARG_2, 'ptr'
    .tailcall $P1(__ARG_1, $P2)
# }
.annotate 'line', 632

.end # mpz_get_d_2exp


.sub 'mpz_get_str' :subid('WSubId_2')
        .param string __ARG_1
        .param int __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 643
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 644
    root_new $P4, ['parrot';'Exception']
    $P4['message'] = "incorrect type for op in mpz_get_str"
    throw $P4
  __label_1: # endif
.annotate 'line', 645
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_get_str'
.annotate 'line', 646
    get_hll_global $P2, [ 'GMP'; 'Common' ], 'stoa'
.annotate 'line', 647
    get_hll_global $P3, [ 'GMP'; 'Common' ], 'atos'
.annotate 'line', 649
    $P5 = $P2(__ARG_1)
    getattribute $P6, __ARG_3, 'ptr'
    $P4 = $P1($P5, __ARG_2, $P6)
    .tailcall $P3($P4)
# }
.annotate 'line', 650

.end # mpz_get_str


.sub 'mpz_add' :subid('WSubId_8')
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 663
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 664
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_add"
    throw $P2
  __label_1: # endif
.annotate 'line', 665
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 666
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_add"
    throw $P2
  __label_2: # endif
.annotate 'line', 667
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 668
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_add"
    throw $P2
  __label_3: # endif
.annotate 'line', 669
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_add'
.annotate 'line', 670
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 671

.end # mpz_add


.sub 'mpz_add_ui' :subid('WSubId_9')
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 674
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 675
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_add_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 676
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 677
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_add_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 678
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_add_ui'
.annotate 'line', 679
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 680

.end # mpz_add_ui


.sub 'mpz_sub' :subid('WSubId_10')
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 695
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 696
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_sub"
    throw $P2
  __label_1: # endif
.annotate 'line', 697
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 698
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_sub"
    throw $P2
  __label_2: # endif
.annotate 'line', 699
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 700
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_sub"
    throw $P2
  __label_3: # endif
.annotate 'line', 701
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_sub'
.annotate 'line', 702
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 703

.end # mpz_sub


.sub 'mpz_sub_ui' :subid('WSubId_11')
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 706
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 707
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_sub_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 708
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 709
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_sub_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 710
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_sub_ui'
.annotate 'line', 711
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 712

.end # mpz_sub_ui


.sub 'mpz_ui_sub'
        .param pmc __ARG_1
        .param int __ARG_2
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
    $P2['message'] = "incorrect type for rop in mpz_ui_sub"
    throw $P2
  __label_1: # endif
.annotate 'line', 717
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 718
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_ui_sub"
    throw $P2
  __label_2: # endif
.annotate 'line', 719
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_ui_sub'
.annotate 'line', 720
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_3, 'ptr'
    $P1($P2, __ARG_2, $P3)
# }
.annotate 'line', 721

.end # mpz_ui_sub


.sub 'mpz_mul' :subid('WSubId_12')
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 736
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 737
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_mul"
    throw $P2
  __label_1: # endif
.annotate 'line', 738
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 739
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul"
    throw $P2
  __label_2: # endif
.annotate 'line', 740
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 741
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_mul"
    throw $P2
  __label_3: # endif
.annotate 'line', 742
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_mul'
.annotate 'line', 743
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 744

.end # mpz_mul


.sub 'mpz_mul_si' :subid('WSubId_13')
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 747
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 748
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_mul_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 749
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 750
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul_si"
    throw $P2
  __label_2: # endif
.annotate 'line', 751
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_mul_si'
.annotate 'line', 752
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 753

.end # mpz_mul_si


.sub 'mpz_mul_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 756
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 757
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_mul_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 758
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 759
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 760
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_mul_ui'
.annotate 'line', 761
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 762

.end # mpz_mul_ui


.sub 'mpz_addmul'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 775
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 776
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_addmul"
    throw $P2
  __label_1: # endif
.annotate 'line', 777
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 778
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_addmul"
    throw $P2
  __label_2: # endif
.annotate 'line', 779
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 780
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_addmul"
    throw $P2
  __label_3: # endif
.annotate 'line', 781
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_addmul'
.annotate 'line', 782
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 783

.end # mpz_addmul


.sub 'mpz_addmul_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 786
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 787
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_addmul_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 788
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 789
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_addmul_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 790
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_addmul_ui'
.annotate 'line', 791
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 792

.end # mpz_addmul_ui


.sub 'mpz_submul'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 805
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 806
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_submul"
    throw $P2
  __label_1: # endif
.annotate 'line', 807
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 808
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_submul"
    throw $P2
  __label_2: # endif
.annotate 'line', 809
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 810
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_submul"
    throw $P2
  __label_3: # endif
.annotate 'line', 811
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_submul'
.annotate 'line', 812
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 813

.end # mpz_submul


.sub 'mpz_submul_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 816
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 817
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_submul_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 818
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 819
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_submul_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 820
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_submul_ui'
.annotate 'line', 821
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 822

.end # mpz_submul_ui


.sub 'mpz_mul_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 833
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 834
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_mul_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 835
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 836
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_mul_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 837
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_mul_2exp'
.annotate 'line', 838
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 839

.end # mpz_mul_2exp


.sub 'mpz_neg' :subid('WSubId_21')
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 850
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 851
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_neg"
    throw $P2
  __label_1: # endif
.annotate 'line', 852
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 853
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_neg"
    throw $P2
  __label_2: # endif
.annotate 'line', 854
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_neg'
.annotate 'line', 855
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 856

.end # mpz_neg


.sub 'mpz_abs' :subid('WSubId_20')
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 867
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 868
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_abs"
    throw $P2
  __label_1: # endif
.annotate 'line', 869
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 870
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_abs"
    throw $P2
  __label_2: # endif
.annotate 'line', 871
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_abs'
.annotate 'line', 872
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 873

.end # mpz_abs


.sub 'mpz_cdiv_q'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 898
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 899
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_q"
    throw $P2
  __label_1: # endif
.annotate 'line', 900
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 901
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_q"
    throw $P2
  __label_2: # endif
.annotate 'line', 902
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 903
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_cdiv_q"
    throw $P2
  __label_3: # endif
.annotate 'line', 904
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_cdiv_q'
.annotate 'line', 905
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 906

.end # mpz_cdiv_q


.sub 'mpz_cdiv_r'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 909
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 910
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_r"
    throw $P2
  __label_1: # endif
.annotate 'line', 911
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 912
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_r"
    throw $P2
  __label_2: # endif
.annotate 'line', 913
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 914
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_cdiv_r"
    throw $P2
  __label_3: # endif
.annotate 'line', 915
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_cdiv_r'
.annotate 'line', 916
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 917

.end # mpz_cdiv_r


.sub 'mpz_cdiv_qr'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 920
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 921
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_qr"
    throw $P2
  __label_1: # endif
.annotate 'line', 922
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 923
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_qr"
    throw $P2
  __label_2: # endif
.annotate 'line', 924
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 925
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_qr"
    throw $P2
  __label_3: # endif
.annotate 'line', 926
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 927
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_cdiv_qr"
    throw $P2
  __label_4: # endif
.annotate 'line', 928
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_cdiv_qr'
.annotate 'line', 929
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 930

.end # mpz_cdiv_qr


.sub 'mpz_cdiv_q_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 933
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 934
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_q_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 935
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 936
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_q_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 937
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_cdiv_q_ui'
.annotate 'line', 938
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 939

.end # mpz_cdiv_q_ui


.sub 'mpz_cdiv_r_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 942
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 943
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_r_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 944
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 945
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_r_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 946
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_cdiv_r_ui'
.annotate 'line', 947
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 948

.end # mpz_cdiv_r_ui


.sub 'mpz_cdiv_qr_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 951
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 952
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_qr_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 953
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 954
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_cdiv_qr_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 955
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 956
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_qr_ui"
    throw $P2
  __label_3: # endif
.annotate 'line', 957
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_cdiv_qr_ui'
.annotate 'line', 958
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 959

.end # mpz_cdiv_qr_ui


.sub 'mpz_cdiv_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 962
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 963
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 964
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_cdiv_ui'
.annotate 'line', 965
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 966

.end # mpz_cdiv_ui


.sub 'mpz_cdiv_q_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 969
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 970
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_cdiv_q_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 971
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 972
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_q_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 973
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_cdiv_q_2exp'
.annotate 'line', 974
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 975

.end # mpz_cdiv_q_2exp


.sub 'mpz_cdiv_r_2exp'
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
    $P2['message'] = "incorrect type for r in mpz_cdiv_r_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 980
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 981
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_cdiv_r_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 982
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_cdiv_r_2exp'
.annotate 'line', 983
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 984

.end # mpz_cdiv_r_2exp


.sub 'mpz_fdiv_q' :subid('WSubId_16')
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1009
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1010
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_q"
    throw $P2
  __label_1: # endif
.annotate 'line', 1011
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1012
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_q"
    throw $P2
  __label_2: # endif
.annotate 'line', 1013
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1014
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_fdiv_q"
    throw $P2
  __label_3: # endif
.annotate 'line', 1015
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_fdiv_q'
.annotate 'line', 1016
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1017

.end # mpz_fdiv_q


.sub 'mpz_fdiv_r'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1020
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1021
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_r"
    throw $P2
  __label_1: # endif
.annotate 'line', 1022
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1023
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_r"
    throw $P2
  __label_2: # endif
.annotate 'line', 1024
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1025
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_fdiv_r"
    throw $P2
  __label_3: # endif
.annotate 'line', 1026
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_fdiv_r'
.annotate 'line', 1027
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1028

.end # mpz_fdiv_r


.sub 'mpz_fdiv_qr'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 1031
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1032
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_qr"
    throw $P2
  __label_1: # endif
.annotate 'line', 1033
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1034
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_qr"
    throw $P2
  __label_2: # endif
.annotate 'line', 1035
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1036
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_qr"
    throw $P2
  __label_3: # endif
.annotate 'line', 1037
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 1038
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_fdiv_qr"
    throw $P2
  __label_4: # endif
.annotate 'line', 1039
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_fdiv_qr'
.annotate 'line', 1040
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 1041

.end # mpz_fdiv_qr


.sub 'mpz_fdiv_q_ui' :subid('WSubId_17')
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1044
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1045
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_q_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1046
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1047
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_q_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1048
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_fdiv_q_ui'
.annotate 'line', 1049
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1050

.end # mpz_fdiv_q_ui


.sub 'mpz_fdiv_r_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1053
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1054
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_r_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1055
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1056
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_r_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1057
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_fdiv_r_ui'
.annotate 'line', 1058
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1059

.end # mpz_fdiv_r_ui


.sub 'mpz_fdiv_qr_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 1062
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1063
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_qr_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1064
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1065
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_qr_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1066
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1067
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_qr_ui"
    throw $P2
  __label_3: # endif
.annotate 'line', 1068
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_fdiv_qr_ui'
.annotate 'line', 1069
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 1070

.end # mpz_fdiv_qr_ui


.sub 'mpz_fdiv_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1073
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1074
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1075
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_fdiv_ui'
.annotate 'line', 1076
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1077

.end # mpz_fdiv_ui


.sub 'mpz_fdiv_q_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1080
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1081
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_fdiv_q_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 1082
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1083
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_q_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 1084
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_fdiv_q_2exp'
.annotate 'line', 1085
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1086

.end # mpz_fdiv_q_2exp


.sub 'mpz_fdiv_r_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1089
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1090
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_fdiv_r_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 1091
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1092
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_fdiv_r_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 1093
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_fdiv_r_2exp'
.annotate 'line', 1094
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1095

.end # mpz_fdiv_r_2exp


.sub 'mpz_tdiv_q' :subid('WSubId_14')
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1124
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1125
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_q"
    throw $P2
  __label_1: # endif
.annotate 'line', 1126
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1127
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_q"
    throw $P2
  __label_2: # endif
.annotate 'line', 1128
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1129
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_tdiv_q"
    throw $P2
  __label_3: # endif
.annotate 'line', 1130
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_tdiv_q'
.annotate 'line', 1131
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1132

.end # mpz_tdiv_q


.sub 'mpz_tdiv_r'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1135
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1136
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_r"
    throw $P2
  __label_1: # endif
.annotate 'line', 1137
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1138
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_r"
    throw $P2
  __label_2: # endif
.annotate 'line', 1139
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1140
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_tdiv_r"
    throw $P2
  __label_3: # endif
.annotate 'line', 1141
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_tdiv_r'
.annotate 'line', 1142
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1143

.end # mpz_tdiv_r


.sub 'mpz_tdiv_qr'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 1146
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1147
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_qr"
    throw $P2
  __label_1: # endif
.annotate 'line', 1148
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1149
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_qr"
    throw $P2
  __label_2: # endif
.annotate 'line', 1150
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1151
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_qr"
    throw $P2
  __label_3: # endif
.annotate 'line', 1152
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 1153
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_tdiv_qr"
    throw $P2
  __label_4: # endif
.annotate 'line', 1154
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_tdiv_qr'
.annotate 'line', 1155
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 1156

.end # mpz_tdiv_qr


.sub 'mpz_tdiv_q_ui' :subid('WSubId_15')
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1159
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1160
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_q_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1161
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1162
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_q_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1163
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_tdiv_q_ui'
.annotate 'line', 1164
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1165

.end # mpz_tdiv_q_ui


.sub 'mpz_tdiv_r_ui'
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
    $P2['message'] = "incorrect type for r in mpz_tdiv_r_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1170
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1171
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_r_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1172
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_tdiv_r_ui'
.annotate 'line', 1173
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1174

.end # mpz_tdiv_r_ui


.sub 'mpz_tdiv_qr_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 1177
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1178
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_qr_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1179
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1180
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_qr_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1181
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1182
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_qr_ui"
    throw $P2
  __label_3: # endif
.annotate 'line', 1183
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_tdiv_qr_ui'
.annotate 'line', 1184
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 1185

.end # mpz_tdiv_qr_ui


.sub 'mpz_tdiv_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1188
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1189
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1190
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_tdiv_ui'
.annotate 'line', 1191
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1192

.end # mpz_tdiv_ui


.sub 'mpz_tdiv_q_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1195
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1196
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_tdiv_q_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 1197
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1198
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_q_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 1199
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_tdiv_q_2exp'
.annotate 'line', 1200
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1201

.end # mpz_tdiv_q_2exp


.sub 'mpz_tdiv_r_2exp'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1204
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1205
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_tdiv_r_2exp"
    throw $P2
  __label_1: # endif
.annotate 'line', 1206
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1207
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_tdiv_r_2exp"
    throw $P2
  __label_2: # endif
.annotate 'line', 1208
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_tdiv_r_2exp'
.annotate 'line', 1209
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1210

.end # mpz_tdiv_r_2exp


.sub 'mpz_mod' :subid('WSubId_18')
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1223
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1224
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_mod"
    throw $P2
  __label_1: # endif
.annotate 'line', 1225
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1226
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_mod"
    throw $P2
  __label_2: # endif
.annotate 'line', 1227
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1228
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_mod"
    throw $P2
  __label_3: # endif
.annotate 'line', 1229
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_mod'
.annotate 'line', 1230
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1231

.end # mpz_mod


.sub 'mpz_mod_ui' :subid('WSubId_19')
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1234
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1235
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for r in mpz_mod_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1236
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1237
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_mod_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1238
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_fdiv_r_ui'
.annotate 'line', 1239
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1240

.end # mpz_mod_ui


.sub 'mpz_divexact'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1253
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1254
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_divexact"
    throw $P2
  __label_1: # endif
.annotate 'line', 1255
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1256
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divexact"
    throw $P2
  __label_2: # endif
.annotate 'line', 1257
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1258
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_divexact"
    throw $P2
  __label_3: # endif
.annotate 'line', 1259
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_divexact'
.annotate 'line', 1260
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1261

.end # mpz_divexact


.sub 'mpz_divexact_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1264
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1265
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for q in mpz_divexact_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1266
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1267
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divexact_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1268
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_divexact_ui'
.annotate 'line', 1269
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1270

.end # mpz_divexact_ui


.sub 'mpz_divisible_p'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1285
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1286
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divisible_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1287
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1288
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_divisible_p"
    throw $P2
  __label_2: # endif
.annotate 'line', 1289
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_divisible_p'
.annotate 'line', 1290
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1291

.end # mpz_divisible_p


.sub 'mpz_divisible_ui_p'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1294
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1295
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divisible_ui_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1296
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_divisible_ui_p'
.annotate 'line', 1297
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1298

.end # mpz_divisible_ui_p


.sub 'mpz_divisible_2exp_p'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1301
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1302
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_divisible_2exp_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1303
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_divisible_2exp_p'
.annotate 'line', 1304
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1305

.end # mpz_divisible_2exp_p


.sub 'mpz_congruent_p'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1320
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1321
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_congruent_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1322
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1323
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for c in mpz_congruent_p"
    throw $P2
  __label_2: # endif
.annotate 'line', 1324
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1325
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for d in mpz_congruent_p"
    throw $P2
  __label_3: # endif
.annotate 'line', 1326
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_congruent_p'
.annotate 'line', 1327
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4)
# }
.annotate 'line', 1328

.end # mpz_congruent_p


.sub 'mpz_congruent_ui_p'
        .param pmc __ARG_1
        .param int __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1331
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1332
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_congruent_ui_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1333
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_congruent_ui_p'
.annotate 'line', 1334
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1335

.end # mpz_congruent_ui_p


.sub 'mpz_congruent_2exp_p'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1338
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1339
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_congruent_2exp_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1340
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1341
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for c in mpz_congruent_2exp_p"
    throw $P2
  __label_2: # endif
.annotate 'line', 1342
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_congruent_2exp_p'
.annotate 'line', 1343
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1344

.end # mpz_congruent_2exp_p


.sub 'mpz_powm'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 1357
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1358
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_powm"
    throw $P2
  __label_1: # endif
.annotate 'line', 1359
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1360
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_powm"
    throw $P2
  __label_2: # endif
.annotate 'line', 1361
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1362
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for exp in mpz_powm"
    throw $P2
  __label_3: # endif
.annotate 'line', 1363
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 1364
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for mod in mpz_powm"
    throw $P2
  __label_4: # endif
.annotate 'line', 1365
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_powm'
.annotate 'line', 1366
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 1367

.end # mpz_powm


.sub 'mpz_powm_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 1370
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1371
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_powm_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1372
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1373
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_powm_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1374
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1375
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for mod in mpz_powm_ui"
    throw $P2
  __label_3: # endif
.annotate 'line', 1376
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_powm_ui'
.annotate 'line', 1377
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_4, 'ptr'
    $P1($P2, $P3, __ARG_3, $P4)
# }
.annotate 'line', 1378

.end # mpz_powm_ui


.sub 'mpz_powm_sec'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
# Body
# {
.annotate 'line', 1389
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1390
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_powm_sec"
    throw $P2
  __label_1: # endif
.annotate 'line', 1391
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1392
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_powm_sec"
    throw $P2
  __label_2: # endif
.annotate 'line', 1393
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1394
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for exp in mpz_powm_sec"
    throw $P2
  __label_3: # endif
.annotate 'line', 1395
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 1396
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for mod in mpz_powm_sec"
    throw $P2
  __label_4: # endif
.annotate 'line', 1397
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_powm_sec'
.annotate 'line', 1398
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    $P1($P2, $P3, $P4, $P5)
# }
.annotate 'line', 1399

.end # mpz_powm_sec


.sub 'mpz_pow_ui'
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
    $P2['message'] = "incorrect type for rop in mpz_pow_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1414
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1415
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for base in mpz_pow_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1416
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_pow_ui'
.annotate 'line', 1417
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1418

.end # mpz_pow_ui


.sub 'mpz_ui_pow_ui'
        .param pmc __ARG_1
        .param int __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1421
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1422
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_ui_pow_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1423
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_ui_pow_ui'
.annotate 'line', 1424
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1425

.end # mpz_ui_pow_ui


.sub 'mpz_root'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1436
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1437
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_root"
    throw $P2
  __label_1: # endif
.annotate 'line', 1438
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1439
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_root"
    throw $P2
  __label_2: # endif
.annotate 'line', 1440
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_root'
.annotate 'line', 1441
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1442

.end # mpz_root


.sub 'mpz_rootrem'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param int __ARG_4
# Body
# {
.annotate 'line', 1453
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1454
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for root in mpz_rootrem"
    throw $P2
  __label_1: # endif
.annotate 'line', 1455
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1456
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rem in mpz_rootrem"
    throw $P2
  __label_2: # endif
.annotate 'line', 1457
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1458
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for u in mpz_rootrem"
    throw $P2
  __label_3: # endif
.annotate 'line', 1459
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_rootrem'
.annotate 'line', 1460
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4, __ARG_4)
# }
.annotate 'line', 1461

.end # mpz_rootrem


.sub 'mpz_sqrt'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1472
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1473
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_sqrt"
    throw $P2
  __label_1: # endif
.annotate 'line', 1474
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1475
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_sqrt"
    throw $P2
  __label_2: # endif
.annotate 'line', 1476
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_sqrt'
.annotate 'line', 1477
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 1478

.end # mpz_sqrt


.sub 'mpz_sqrtrem'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1489
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1490
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop1 in mpz_sqrtrem"
    throw $P2
  __label_1: # endif
.annotate 'line', 1491
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1492
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop2 in mpz_sqrtrem"
    throw $P2
  __label_2: # endif
.annotate 'line', 1493
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1494
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_sqrtrem"
    throw $P2
  __label_3: # endif
.annotate 'line', 1495
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_sqrtrem'
.annotate 'line', 1496
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1497

.end # mpz_sqrtrem


.sub 'mpz_perfect_power_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1508
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1509
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_perfect_power_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1510
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_perfect_power_p'
.annotate 'line', 1511
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1512

.end # mpz_perfect_power_p


.sub 'mpz_perfect_square_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 1523
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1524
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_perfect_square_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1525
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_perfect_square_p'
.annotate 'line', 1526
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 1527

.end # mpz_perfect_square_p


.sub 'mpz_probab_prime_p'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1538
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1539
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_probab_prime_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 1540
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_probab_prime_p'
.annotate 'line', 1541
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1542

.end # mpz_probab_prime_p


.sub 'mpz_nextprime'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1553
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1554
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_nextprime"
    throw $P2
  __label_1: # endif
.annotate 'line', 1555
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1556
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_nextprime"
    throw $P2
  __label_2: # endif
.annotate 'line', 1557
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_nextprime'
.annotate 'line', 1558
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 1559

.end # mpz_nextprime


.sub 'mpz_gcd'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1570
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1571
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_gcd"
    throw $P2
  __label_1: # endif
.annotate 'line', 1572
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1573
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_gcd"
    throw $P2
  __label_2: # endif
.annotate 'line', 1574
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1575
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_gcd"
    throw $P2
  __label_3: # endif
.annotate 'line', 1576
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_gcd'
.annotate 'line', 1577
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1578

.end # mpz_gcd


.sub 'mpz_gcd_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1589
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1590
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_gcd_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1591
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1592
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_gcd_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1593
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_gcd_ui'
.annotate 'line', 1594
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1595

.end # mpz_gcd_ui


.sub 'mpz_gcdext'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
        .param pmc __ARG_4
        .param pmc __ARG_5
# Body
# {
.annotate 'line', 1606
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1607
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for g in mpz_gcdext"
    throw $P2
  __label_1: # endif
.annotate 'line', 1608
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1609
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for s in mpz_gcdext"
    throw $P2
  __label_2: # endif
.annotate 'line', 1610
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1611
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for t in mpz_gcdext"
    throw $P2
  __label_3: # endif
.annotate 'line', 1612
    isa $I2, __ARG_4, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_4
# predefined Error
.annotate 'line', 1613
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_gcdext"
    throw $P2
  __label_4: # endif
.annotate 'line', 1614
    isa $I2, __ARG_5, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_5
# predefined Error
.annotate 'line', 1615
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_gcdext"
    throw $P2
  __label_5: # endif
.annotate 'line', 1616
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_gcdext'
.annotate 'line', 1617
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    getattribute $P5, __ARG_4, 'ptr'
    getattribute $P6, __ARG_5, 'ptr'
    $P1($P2, $P3, $P4, $P5, $P6)
# }
.annotate 'line', 1618

.end # mpz_gcdext


.sub 'mpz_lcm'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1631
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1632
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_lcm"
    throw $P2
  __label_1: # endif
.annotate 'line', 1633
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1634
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_lcm"
    throw $P2
  __label_2: # endif
.annotate 'line', 1635
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1636
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_lcm"
    throw $P2
  __label_3: # endif
.annotate 'line', 1637
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_lcm'
.annotate 'line', 1638
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1639

.end # mpz_lcm


.sub 'mpz_lcm_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1642
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1643
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_lcm_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1644
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1645
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_lcm_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1646
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_lcm_ui'
.annotate 'line', 1647
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1648

.end # mpz_lcm_ui


.sub 'mpz_invert'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1659
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1660
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_invert"
    throw $P2
  __label_1: # endif
.annotate 'line', 1661
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1662
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_invert"
    throw $P2
  __label_2: # endif
.annotate 'line', 1663
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1664
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_invert"
    throw $P2
  __label_3: # endif
.annotate 'line', 1665
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_invert'
.annotate 'line', 1666
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4)
# }
.annotate 'line', 1667

.end # mpz_invert


.sub 'mpz_jacobi'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1678
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1679
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_jacobi"
    throw $P2
  __label_1: # endif
.annotate 'line', 1680
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1681
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_jacobi"
    throw $P2
  __label_2: # endif
.annotate 'line', 1682
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_jacobi'
.annotate 'line', 1683
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1684

.end # mpz_jacobi


.sub 'mpz_legendre'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1695
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1696
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_legendre"
    throw $P2
  __label_1: # endif
.annotate 'line', 1697
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1698
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for p in mpz_legendre"
    throw $P2
  __label_2: # endif
.annotate 'line', 1699
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_jacobi'
.annotate 'line', 1700
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1701

.end # mpz_legendre


.sub 'mpz_kronecker'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1720
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1721
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_kronecker"
    throw $P2
  __label_1: # endif
.annotate 'line', 1722
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1723
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_kronecker"
    throw $P2
  __label_2: # endif
.annotate 'line', 1724
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_jacobi'
.annotate 'line', 1725
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1726

.end # mpz_kronecker


.sub 'mpz_kronecker_si'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1729
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1730
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_kronecker_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 1731
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_kronecker_si'
.annotate 'line', 1732
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1733

.end # mpz_kronecker_si


.sub 'mpz_kronecker_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1736
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1737
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for a in mpz_kronecker_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1738
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_kronecker_ui'
.annotate 'line', 1739
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1740

.end # mpz_kronecker_ui


.sub 'mpz_si_kronecker'
        .param int __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1743
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1744
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_si_kronecker"
    throw $P2
  __label_1: # endif
.annotate 'line', 1745
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_si_kronecker'
.annotate 'line', 1746
    getattribute $P2, __ARG_2, 'ptr'
    .tailcall $P1(__ARG_1, $P2)
# }
.annotate 'line', 1747

.end # mpz_si_kronecker


.sub 'mpz_ui_kronecker'
        .param int __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1750
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1751
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for b in mpz_ui_kronecker"
    throw $P2
  __label_1: # endif
.annotate 'line', 1752
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_ui_kronecker'
.annotate 'line', 1753
    getattribute $P2, __ARG_2, 'ptr'
    .tailcall $P1(__ARG_1, $P2)
# }
.annotate 'line', 1754

.end # mpz_ui_kronecker


.sub 'mpz_remove'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1765
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1766
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_remove"
    throw $P2
  __label_1: # endif
.annotate 'line', 1767
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1768
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_remove"
    throw $P2
  __label_2: # endif
.annotate 'line', 1769
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1770
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for f in mpz_remove"
    throw $P2
  __label_3: # endif
.annotate 'line', 1771
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_remove'
.annotate 'line', 1772
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    .tailcall $P1($P2, $P3, $P4)
# }
.annotate 'line', 1773

.end # mpz_remove


.sub 'mpz_fac_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1784
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1785
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_fac_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1786
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_fac_ui'
.annotate 'line', 1787
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1788

.end # mpz_fac_ui


.sub 'mpz_bin_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1801
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1802
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_bin_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1803
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1804
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_bin_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1805
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_bin_ui'
.annotate 'line', 1806
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1807

.end # mpz_bin_ui


.sub 'mpz_bin_uiui'
        .param pmc __ARG_1
        .param int __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1810
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1811
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_bin_uiui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1812
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_bin_uiui'
.annotate 'line', 1813
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 1814

.end # mpz_bin_uiui


.sub 'mpz_fib_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1827
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1828
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for fn in mpz_fib_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1829
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_fib_ui'
.annotate 'line', 1830
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1831

.end # mpz_fib_ui


.sub 'mpz_fib2_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1834
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1835
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for fn in mpz_fib2_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1836
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1837
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for fnsub1 in mpz_fib2_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1838
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_fib2_ui'
.annotate 'line', 1839
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1840

.end # mpz_fib2_ui


.sub 'mpz_lucnum_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1853
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1854
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for ln in mpz_lucnum_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1855
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_lucnum_ui'
.annotate 'line', 1856
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 1857

.end # mpz_lucnum_ui


.sub 'mpz_lucnum2_ui'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 1860
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1861
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for ln in mpz_lucnum2_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1862
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1863
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for lnsub1 in mpz_lucnum2_ui"
    throw $P2
  __label_2: # endif
.annotate 'line', 1864
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_lucnum2_ui'
.annotate 'line', 1865
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3, __ARG_3)
# }
.annotate 'line', 1866

.end # mpz_lucnum2_ui


.sub 'mpz_cmp' :subid('WSubId_22')
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1883
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1884
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmp"
    throw $P2
  __label_1: # endif
.annotate 'line', 1885
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1886
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_cmp"
    throw $P2
  __label_2: # endif
.annotate 'line', 1887
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_cmp'
.annotate 'line', 1888
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1889

.end # mpz_cmp


.sub 'mpz_cmp_d'
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 1892
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1893
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmp_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 1894
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_cmp_d'
.annotate 'line', 1895
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1896

.end # mpz_cmp_d


.sub 'mpz_cmp_si' :subid('WSubId_23')
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1899
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1900
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmp_si"
    throw $P2
  __label_1: # endif
.annotate 'line', 1901
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_cmp_si'
.annotate 'line', 1902
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1903

.end # mpz_cmp_si


.sub 'mpz_cmp_ui' :subid('WSubId_24')
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1906
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1907
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmp_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1908
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_cmp_ui'
.annotate 'line', 1909
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1910

.end # mpz_cmp_ui


.sub 'mpz_cmpabs'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 1925
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1926
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmpabs"
    throw $P2
  __label_1: # endif
.annotate 'line', 1927
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1928
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_cmpabs"
    throw $P2
  __label_2: # endif
.annotate 'line', 1929
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_cmpabs'
.annotate 'line', 1930
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 1931

.end # mpz_cmpabs


.sub 'mpz_cmpabs_d'
        .param pmc __ARG_1
        .param num __ARG_2
# Body
# {
.annotate 'line', 1934
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1935
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmpabs_d"
    throw $P2
  __label_1: # endif
.annotate 'line', 1936
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_cmpabs_d'
.annotate 'line', 1937
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1938

.end # mpz_cmpabs_d


.sub 'mpz_cmpabs_ui'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 1941
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1942
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_cmpabs_ui"
    throw $P2
  __label_1: # endif
.annotate 'line', 1943
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_cmpabs_ui'
.annotate 'line', 1944
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 1945

.end # mpz_cmpabs_ui


.sub 'mpz_and'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1956
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1957
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_and"
    throw $P2
  __label_1: # endif
.annotate 'line', 1958
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1959
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_and"
    throw $P2
  __label_2: # endif
.annotate 'line', 1960
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1961
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_and"
    throw $P2
  __label_3: # endif
.annotate 'line', 1962
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_and'
.annotate 'line', 1963
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1964

.end # mpz_and


.sub 'mpz_ior'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1975
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1976
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_ior"
    throw $P2
  __label_1: # endif
.annotate 'line', 1977
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1978
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_ior"
    throw $P2
  __label_2: # endif
.annotate 'line', 1979
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1980
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_ior"
    throw $P2
  __label_3: # endif
.annotate 'line', 1981
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_ior'
.annotate 'line', 1982
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 1983

.end # mpz_ior


.sub 'mpz_xor'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 1994
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 1995
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_xor"
    throw $P2
  __label_1: # endif
.annotate 'line', 1996
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 1997
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_xor"
    throw $P2
  __label_2: # endif
.annotate 'line', 1998
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_3
# predefined Error
.annotate 'line', 1999
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_xor"
    throw $P2
  __label_3: # endif
.annotate 'line', 2000
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_xor'
.annotate 'line', 2001
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    getattribute $P4, __ARG_3, 'ptr'
    $P1($P2, $P3, $P4)
# }
.annotate 'line', 2002

.end # mpz_xor


.sub 'mpz_com'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 2013
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2014
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_com"
    throw $P2
  __label_1: # endif
.annotate 'line', 2015
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 2016
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_com"
    throw $P2
  __label_2: # endif
.annotate 'line', 2017
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_com'
.annotate 'line', 2018
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    $P1($P2, $P3)
# }
.annotate 'line', 2019

.end # mpz_com


.sub 'mpz_popcount'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2030
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2031
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_popcount"
    throw $P2
  __label_1: # endif
.annotate 'line', 2032
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_popcount'
.annotate 'line', 2033
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2034

.end # mpz_popcount


.sub 'mpz_hamdist'
        .param pmc __ARG_1
        .param pmc __ARG_2
# Body
# {
.annotate 'line', 2045
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2046
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op1 in mpz_hamdist"
    throw $P2
  __label_1: # endif
.annotate 'line', 2047
    isa $I2, __ARG_2, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 2048
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op2 in mpz_hamdist"
    throw $P2
  __label_2: # endif
.annotate 'line', 2049
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_hamdist'
.annotate 'line', 2050
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_2, 'ptr'
    .tailcall $P1($P2, $P3)
# }
.annotate 'line', 2051

.end # mpz_hamdist


.sub 'mpz_scan0'
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
    $P2['message'] = "incorrect type for op in mpz_scan0"
    throw $P2
  __label_1: # endif
.annotate 'line', 2066
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_scan0'
.annotate 'line', 2067
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 2068

.end # mpz_scan0


.sub 'mpz_scan1'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 2071
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2072
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_scan1"
    throw $P2
  __label_1: # endif
.annotate 'line', 2073
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_scan1'
.annotate 'line', 2074
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 2075

.end # mpz_scan1


.sub 'mpz_setbit'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 2086
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2087
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_setbit"
    throw $P2
  __label_1: # endif
.annotate 'line', 2088
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_setbit'
.annotate 'line', 2089
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 2090

.end # mpz_setbit


.sub 'mpz_clrbit'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 2101
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2102
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_clrbit"
    throw $P2
  __label_1: # endif
.annotate 'line', 2103
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_clrbit'
.annotate 'line', 2104
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 2105

.end # mpz_clrbit


.sub 'mpz_combit'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 2116
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2117
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_combit"
    throw $P2
  __label_1: # endif
.annotate 'line', 2118
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_combit'
.annotate 'line', 2119
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2)
# }
.annotate 'line', 2120

.end # mpz_combit


.sub 'mpz_tstbit' :subid('WSubId_25')
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 2131
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2132
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_tstbit"
    throw $P2
  __label_1: # endif
.annotate 'line', 2133
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_tstbit'
.annotate 'line', 2134
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 2135

.end # mpz_tstbit


.sub 'mpz_urandomb'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 2146
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2147
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_urandomb"
    throw $P2
  __label_1: # endif
.annotate 'line', 2148
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_urandomb'
.annotate 'line', 2149
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 2150

.end # mpz_urandomb


.sub 'mpz_urandomm'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param pmc __ARG_3
# Body
# {
.annotate 'line', 2161
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2162
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_urandomm"
    throw $P2
  __label_1: # endif
.annotate 'line', 2163
    isa $I2, __ARG_3, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_2
# predefined Error
.annotate 'line', 2164
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for n in mpz_urandomm"
    throw $P2
  __label_2: # endif
.annotate 'line', 2165
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_urandomm'
.annotate 'line', 2166
    getattribute $P2, __ARG_1, 'ptr'
    getattribute $P3, __ARG_3, 'ptr'
    $P1($P2, __ARG_2, $P3)
# }
.annotate 'line', 2167

.end # mpz_urandomm


.sub 'mpz_rrandomb'
        .param pmc __ARG_1
        .param pmc __ARG_2
        .param int __ARG_3
# Body
# {
.annotate 'line', 2178
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2179
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for rop in mpz_rrandomb"
    throw $P2
  __label_1: # endif
.annotate 'line', 2180
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_rrandomb'
.annotate 'line', 2181
    getattribute $P2, __ARG_1, 'ptr'
    $P1($P2, __ARG_2, __ARG_3)
# }
.annotate 'line', 2182

.end # mpz_rrandomb


.sub 'mpz_fits_ulong_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2203
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2204
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_ulong_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 2205
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_fits_ulong_p'
.annotate 'line', 2206
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2207

.end # mpz_fits_ulong_p


.sub 'mpz_fits_slong_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2210
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2211
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_slong_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 2212
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_fits_slong_p'
.annotate 'line', 2213
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2214

.end # mpz_fits_slong_p


.sub 'mpz_fits_uint_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2217
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2218
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_uint_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 2219
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_fits_uint_p'
.annotate 'line', 2220
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2221

.end # mpz_fits_uint_p


.sub 'mpz_fits_sint_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2224
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2225
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_sint_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 2226
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_fits_sint_p'
.annotate 'line', 2227
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2228

.end # mpz_fits_sint_p


.sub 'mpz_fits_ushort_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2231
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2232
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_ushort_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 2233
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_fits_ushort_p'
.annotate 'line', 2234
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2235

.end # mpz_fits_ushort_p


.sub 'mpz_fits_sshort_p'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2238
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2239
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_fits_sshort_p"
    throw $P2
  __label_1: # endif
.annotate 'line', 2240
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_fits_sshort_p'
.annotate 'line', 2241
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2242

.end # mpz_fits_sshort_p


.sub 'mpz_sizeinbase'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 2253
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2254
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_sizeinbase"
    throw $P2
  __label_1: # endif
.annotate 'line', 2255
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_sizeinbase'
.annotate 'line', 2256
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 2257

.end # mpz_sizeinbase


.sub 'mpz_getlimbn'
        .param pmc __ARG_1
        .param int __ARG_2
# Body
# {
.annotate 'line', 2268
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2269
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_getlimbn"
    throw $P2
  __label_1: # endif
.annotate 'line', 2270
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_getlimbn'
.annotate 'line', 2271
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2, __ARG_2)
# }
.annotate 'line', 2272

.end # mpz_getlimbn


.sub 'mpz_size'
        .param pmc __ARG_1
# Body
# {
.annotate 'line', 2283
    isa $I2, __ARG_1, [ 'GMP'; 'Integer' ]
    not $I1, $I2
    unless $I1 goto __label_1
# predefined Error
.annotate 'line', 2284
    root_new $P2, ['parrot';'Exception']
    $P2['message'] = "incorrect type for op in mpz_size"
    throw $P2
  __label_1: # endif
.annotate 'line', 2285
    get_hll_global $P1, [ 'GMP'; 'Raw' ], '__gmpz_size'
.annotate 'line', 2286
    getattribute $P2, __ARG_1, 'ptr'
    .tailcall $P1($P2)
# }
.annotate 'line', 2287

.end # mpz_size

# End generated code
