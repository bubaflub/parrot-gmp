$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Congruent {
    function test_mpz_congruent_p() {
        var n = new GMP.Integer(30);
        var c = new GMP.Integer(6);
        var d = new GMP.Integer(8);
        int i = mpz_congruent_p(n, c, d);
        self.assert.not_equal(i, 0);
        i = 0;
        n = new GMP.Integer(88);
        c = new GMP.Integer(1);
        d = new GMP.Integer(3);
        i = mpz_congruent_p(n, c, d);
        self.assert.not_equal(i, 0);
    }
    function test_mpz_congruent_ui_p() {
        var n = new GMP.Integer(30);
        int c = 6;
        int d = 8;
        int i = mpz_congruent_ui_p(n, c, d);
        self.assert.not_equal(i, 0);
        i = 0;
        n = new GMP.Integer(88);
        c = 1;
        d = 3;
        i = mpz_congruent_ui_p(n, c, d);
        self.assert.not_equal(i, 0);
    }

    function test_mpz_congruent_2exp_p() {
        var n = new GMP.Integer(30);
        var c = new GMP.Integer(6);
        int d = 3;
        int i = mpz_congruent_2exp_p(n, c, d);
        self.assert.not_equal(i, 0);
        i = 0;
        n = new GMP.Integer(89);
        c = new GMP.Integer(1);
        d = 2;
        i = mpz_congruent_2exp_p(n, c, d);
        self.assert.not_equal(i, 0);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Congruent);
}
