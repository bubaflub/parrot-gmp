$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Popcount {
    function test_mpz_popcount() {
        var op = new GMP.Integer(30);
        int i = mpz_popcount(op);
        self.assert.equal(i, 4);
        op = new GMP.Integer(89);
        i = mpz_popcount(op);
        self.assert.equal(i, 4);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Popcount);
}
