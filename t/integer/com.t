$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Com {
    function test_mpz_com() {
        var rop = new GMP.Integer();
        var op1 = new GMP.Integer(30);
        mpz_com(rop, op1);
        int i = mpz_get_si(rop);
        self.assert.equal(i, -31);
        rop = new GMP.Integer();
        op1 = new GMP.Integer(89);
        mpz_com(rop, op1);
        i = mpz_get_si(rop);
        self.assert.equal(i, -90);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Com);
}
