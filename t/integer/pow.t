$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Pow {
    function test_mpz_pow_ui() {
        var rop = new GMP.Integer();
        var base = new GMP.Integer(34);
        int exp = 3;
        mpz_pow_ui(rop, base, exp);
        int i = mpz_get_ui(rop);
        self.assert.equal(i, 39304);
        rop = new GMP.Integer();
        base = new GMP.Integer(18);
        exp = 4;
        mpz_pow_ui(rop, base, exp);
        i = mpz_get_ui(rop);
        self.assert.equal(i, 104976);
    }

    function test_mpz_ui_pow_ui() {
        var rop = new GMP.Integer();
        int base = 34;
        int exp = 3;
        mpz_ui_pow_ui(rop, base, exp);
        int i = mpz_get_ui(rop);
        self.assert.equal(i, 39304);
        rop = new GMP.Integer();
        base = 18;
        exp = 4;
        mpz_ui_pow_ui(rop, base, exp);
        i = mpz_get_ui(rop);
        self.assert.equal(i, 104976);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Pow);
}
