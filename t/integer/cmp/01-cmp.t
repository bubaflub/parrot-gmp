$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Cmp {
    function test_mpz_cmp() {
        var op1 = new GMP.Integer(32);
        var op2 = new GMP.Integer(30);
        int i = mpz_cmp(op1, op2);
        self.assert.is_true(i > 0);
        op1 = new GMP.Integer(30);
        op2 = new GMP.Integer(89);
        i = mpz_cmp(op1, op2);
        self.assert.is_true(i < 0);
    }

    function test_mpz_cmp_d() {
        var op1 = new GMP.Integer(32);
        int op2 = 30;
        int i = mpz_cmp_d(op1, op2);
        self.assert.is_true(i > 0);
        op1 = new GMP.Integer(30);
        op2 = 89;
        i = mpz_cmp_d(op1, op2);
        self.assert.is_true(i < 0);
    }

    function test_mpz_cmp_si() {
        var op1 = new GMP.Integer(32);
        int op2 = 30;
        int i = mpz_cmp_si(op1, op2);
        self.assert.is_true(i > 0);
        op1 = new GMP.Integer(30);
        op2 = 89;
        i = mpz_cmp_si(op1, op2);
        self.assert.is_true(i < 0);
    }

    function test_mpz_cmp_ui() {
        var op1 = new GMP.Integer(32);
        int op2 = 30;
        int i = mpz_cmp_ui(op1, op2);
        self.assert.is_true(i > 0);
        op1 = new GMP.Integer(30);
        op2 = 89;
        i = mpz_cmp_ui(op1, op2);
        self.assert.is_true(i < 0);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Cmp);
}
