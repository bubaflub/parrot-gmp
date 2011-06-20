$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Get {
    function test_mpz_get_ui() {
        var x = new GMP.Integer(30);
        int i = mpz_get_ui(x);
        self.assert.equal(i, 30);
    }

    function test_mpz_get_si() {
        var x = new GMP.Integer(30);
        int i = mpz_get_si(x);
        self.assert.equal(i, 30);
        var y = new GMP.Integer(-32);
        int j = mpz_get_si(y);
        self.assert.equal(j, -32);
    }

    function test_mpz_get_d() {
        var x = new GMP.Integer(30);
        float f = mpz_get_d(x);
        self.assert.equal(f, 30);
        var y = new GMP.Integer(-32);
        f = mpz_get_d(y);
        self.assert.equal(f, -32);
    }
    function test_mpz_get_d_2exp() {
        var x = new GMP.Integer(30);
        using int_t;
        var t = int_t();
        var exp = t.alloc();
        float f = mpz_get_d_2exp(exp, x);
        int i = t[exp, 0];
        self.assert.equal(f, 0.9375);
        self.assert.equal(i, 5);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Get);
}
