$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_And {
    function test_mpz_and() {
        var rop = new GMP.Integer();
        var op1 = new GMP.Integer(30);
        var op2 = new GMP.Integer(34);
        mpz_and(rop, op1, op2);
        int i = mpz_get_si(rop);
        self.assert.equal(i, 2);
        rop = new GMP.Integer();
        op1 = new GMP.Integer(89);
        op2 = new GMP.Integer(23);
        mpz_and(rop, op1, op2);
        i = mpz_get_si(rop);
        self.assert.equal(i, 17);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_And);
}
