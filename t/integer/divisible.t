$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Divisible {
    function test_mpz_divisible_p() {
        var n = new GMP.Integer(32);
        var d = new GMP.Integer(8);
        int i = mpz_divisible_p(n, d);
        self.assert.not_equal(i, 0);
        i = 0;
        n = new GMP.Integer(90);
        d = new GMP.Integer(3);
        i = mpz_divisible_p(n, d);
        self.assert.not_equal(i, 0);
    }

    function test_mpz_divisible_ui_p() {
        var n = new GMP.Integer(32);
        int d = 8;
        int i = mpz_divisible_ui_p(n, d);
        self.assert.not_equal(i, 0);
        i = 0;
        n = new GMP.Integer(90);
        d = 3;
        i = mpz_divisible_ui_p(n, d);
        self.assert.not_equal(i, 0);
    }

    function test_mpz_divisible_2exp_p() {
        var n = new GMP.Integer(32);
        int d = 3;
        int i = mpz_divisible_2exp_p(n, d);
        self.assert.not_equal(i, 0);
        i = 0;
        n = new GMP.Integer(90);
        d = 1;
        i = mpz_divisible_2exp_p(n, d);
        self.assert.not_equal(i, 0);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Divisible);
}
