$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Neg {
    function test_mpz_neg() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(30);
        mpz_neg(x, y);
        int i = mpz_get_si(x);
        self.assert.equal(i, -30);
        mpz_neg(x, x);
        i = mpz_get_si(x);
        self.assert.equal(i, 30);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Neg);
}
