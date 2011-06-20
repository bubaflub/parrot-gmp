$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Invert {
    function test_mpz_invert() {
        var rop = new GMP.Integer();
        var op1 = new GMP.Integer(30);
        var op2 = new GMP.Integer(31);
        int j = mpz_invert(rop, op1, op2);
        int i = mpz_get_ui(rop);
        self.assert.equal(i, 30);
        self.assert.not_equal(j, 0);
        rop = new GMP.Integer();
        op1 = new GMP.Integer(32);
        op2 = new GMP.Integer(73);
        j = mpz_invert(rop, op1, op2);
        i = mpz_get_ui(rop);
        self.assert.equal(i, 16);
        self.assert.not_equal(j, 0);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Invert);
}
