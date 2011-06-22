$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Xor {
    function test_mpz_xor() {
        var rop = new GMP.Integer();
        var op1 = new GMP.Integer(30);
        var op2 = new GMP.Integer(34);
        mpz_xor(rop, op1, op2);
        int i = mpz_get_si(rop);
        say(i);
        self.assert.equal(i, 60);
        rop = new GMP.Integer();
        op1 = new GMP.Integer(89);
        op2 = new GMP.Integer(23);
        mpz_xor(rop, op1, op2);
        i = mpz_get_si(rop);
        say(i);
        self.assert.equal(i, 78);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Xor);
}
