$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Legendre {
    function test_mpz_legendre() {
        var a = new GMP.Integer(1);
        var b = new GMP.Integer(3);
        int i = mpz_legendre(a, b);
        self.assert.equal(i, 1);
        a = new GMP.Integer(2);
        b = new GMP.Integer(3);
        i = mpz_legendre(a, b);
        self.assert.equal(i, -1);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Legendre);
}
