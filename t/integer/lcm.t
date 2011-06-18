$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Lcm {
    function test_mpz_lcm() {
        var rop = new GMP.Integer();
        var op1 = new GMP.Integer(30);
        var op2 = new GMP.Integer(8);
        mpz_lcm(rop, op1, op2);
        int i = mpz_get_ui(rop);
        self.assert.equal(i, 120);
        rop = new GMP.Integer();
        op1 = new GMP.Integer(89);
        op2 = new GMP.Integer(23);
        mpz_lcm(rop, op1, op2);
        i = mpz_get_ui(rop);
        self.assert.equal(i, 2047);
    }

    function test_mpz_lcm_ui() {
        var rop = new GMP.Integer();
        var op1 = new GMP.Integer(30);
        int op2 = 8;
        mpz_lcm_ui(rop, op1, op2);
        int i = mpz_get_ui(rop);
        self.assert.equal(i, 120);
        rop = new GMP.Integer();
        op1 = new GMP.Integer(89);
        op2 = 23;
        mpz_lcm_ui(rop, op1, op2);
        i = mpz_get_ui(rop);
        self.assert.equal(i, 2047);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Lcm);
}
