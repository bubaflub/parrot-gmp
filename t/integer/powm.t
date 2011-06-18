$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Powm {
    function test_mpz_powm() {
        var rop = new GMP.Integer();
        var base = new GMP.Integer(30);
        var exp = new GMP.Integer(34);
        var mod = new GMP.Integer(21);
        mpz_powm(rop, base, exp, mod);
        int i = mpz_get_ui(rop);
        self.assert.equal(i, 9);
        rop = new GMP.Integer();
        base = new GMP.Integer(18);
        exp = new GMP.Integer(4);
        mod = new GMP.Integer(5);
        mpz_powm(rop, base, exp, mod);
        i = mpz_get_ui(rop);
        self.assert.equal(i, 1);
    }

    function test_mpz_powm_ui() {
        var rop = new GMP.Integer();
        var base = new GMP.Integer(30);
        int exp = 34;
        var mod = new GMP.Integer(21);
        mpz_powm_ui(rop, base, exp, mod);
        int i = mpz_get_ui(rop);
        self.assert.equal(i, 9);
        rop = new GMP.Integer();
        base = new GMP.Integer(18);
        exp = 4;
        mod = new GMP.Integer(5);
        mpz_powm_ui(rop, base, exp, mod);
        i = mpz_get_ui(rop);
        self.assert.equal(i, 1);
    }

    function test_mpz_powm_sec() {
        var rop = new GMP.Integer();
        var base = new GMP.Integer(30);
        var exp = new GMP.Integer(34);
        var mod = new GMP.Integer(21);
        mpz_powm_sec(rop, base, exp, mod);
        int i = mpz_get_ui(rop);
        self.assert.equal(i, 9);
        rop = new GMP.Integer();
        base = new GMP.Integer(18);
        exp = new GMP.Integer(4);
        mod = new GMP.Integer(5);
        mpz_powm_sec(rop, base, exp, mod);
        i = mpz_get_ui(rop);
        self.assert.equal(i, 1);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Powm);
}
