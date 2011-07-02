$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Sgn {
    function test_mpz_sgn() {
        var x = new GMP.Integer(64);
        int i = mpz_sgn(x);
        self.assert.equal(i, 1);
        x = new GMP.Integer(-64);
        i = mpz_sgn(x);
        self.assert.equal(i, -1);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Sgn);
}
