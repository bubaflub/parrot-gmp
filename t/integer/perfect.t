$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Perfect {
    function test_mpz_perfect_power_p() {
        var op = new GMP.Integer(8);
        int i = mpz_perfect_power_p(op);
        self.assert.not_equal(i, 0);
        op = new GMP.Integer(34);
        i = mpz_perfect_power_p(op);
        self.assert.equal(i, 0);
    }

    function test_mpz_perfect_square_p() {
        var op = new GMP.Integer(9);
        int i = mpz_perfect_square_p(op);
        self.assert.not_equal(i, 0);
        op = new GMP.Integer(24);
        i = mpz_perfect_square_p(op);
        self.assert.equal(i, 0);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Perfect);
}
