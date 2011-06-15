$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Set {
    function test_mpz_set() {
        var x = new GMP.Integer(30);
        var y = new GMP.Integer();
        mpz_set(y, x);
        int i = mpz_get_ui(y);
        self.assert.equal(i, 30);
    }

    function test_mpz_set_ui() {
        var x = new GMP.Integer(30);
        mpz_set_ui(x, 32);
        int i = mpz_get_ui(x);
        self.assert.equal(i, 32);
        mpz_set_ui(x, 33);
        i = mpz_get_ui(x);
        self.assert.equal(i, 33);
    }

    function test_mpz_set_si() {
        var x = new GMP.Integer(30);
        mpz_set_si(x, 32);
        int i = mpz_get_ui(x);
        self.assert.equal(i, 32);
        mpz_set_si(x, 33);
        i = mpz_get_ui(x);
        self.assert.equal(i, 33);
    }

    function test_mpz_set_d() {
        var x = new GMP.Integer();
        float f = 32.1;
        mpz_set_d(x, f);
        int i = mpz_get_ui(x);
        self.assert.equal(i, 32);
        f = 33.1;
        mpz_set_d(x, f);
        i = mpz_get_ui(x);
        self.assert.equal(i, 33);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Set);
}
