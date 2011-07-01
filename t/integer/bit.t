$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Bit {
    function test_mpz_setbit() {
        var rop = new GMP.Integer(90);
        int bit_index = 0;
        mpz_setbit(rop, bit_index);
        int i = mpz_get_ui(rop);
        self.assert.equal(i, 91);
        rop = new GMP.Integer(24);
        bit_index = 1;
        mpz_setbit(rop, bit_index);
        i = mpz_get_ui(rop);
        self.assert.equal(i, 26);
    }

    function test_mpz_clrbit() {
        var rop = new GMP.Integer(89);
        int bit_index = 0;
        mpz_clrbit(rop, bit_index);
        int i = mpz_get_ui(rop);
        self.assert.equal(i, 88);
        rop = new GMP.Integer(23);
        bit_index = 1;
        mpz_clrbit(rop, bit_index);
        i = mpz_get_ui(rop);
        self.assert.equal(i, 21);
    }

    function test_mpz_combit() {
        var rop = new GMP.Integer(89);
        int bit_index = 0;
        mpz_combit(rop, bit_index);
        int i = mpz_get_ui(rop);
        self.assert.equal(i, 88);
        rop = new GMP.Integer(23);
        bit_index = 1;
        mpz_combit(rop, bit_index);
        i = mpz_get_ui(rop);
        self.assert.equal(i, 21);
    }

    function test_mpz_tstbit() {
        var rop = new GMP.Integer(89);
        int bit_index = 0;
        int i = mpz_tstbit(rop, bit_index);
        self.assert.equal(i, 1);
        rop = new GMP.Integer(23);
        bit_index = 1;
        i = mpz_tstbit(rop, bit_index);
        self.assert.equal(i, 1);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Bit);
}
