$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Hamdist {
    function test_mpz_hamdist() {
        var op1 = new GMP.Integer(30);
        var op2 = new GMP.Integer(57);
        int i = mpz_hamdist(op1, op2);
        self.assert.equal(i, 4);
        op1 = new GMP.Integer(89);
        op2 = new GMP.Integer(4);
        i = mpz_hamdist(op1, op2);
        self.assert.equal(i, 5);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Hamdist);
}
