$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Oddeven {
    function test_mpz_even_p() {
        var x = new GMP.Integer(64);
        int i = mpz_even_p(x);
        self.assert.equal(i, 1);
        x = new GMP.Integer(63);
        i = mpz_even_p(x);
        self.assert.equal(i, 0);
    }

    function test_mpz_odd_p() {
        var x = new GMP.Integer(64);
        int i = mpz_odd_p(x);
        self.assert.equal(i, 0);
        x = new GMP.Integer(63);
        i = mpz_odd_p(x);
        self.assert.equal(i, 1);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Oddeven);
}
