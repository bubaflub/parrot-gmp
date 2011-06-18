$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Sqrt {
    function test_mpz_sqrt() {
        var rop = new GMP.Integer();
        var op = new GMP.Integer(34);
        mpz_sqrt(rop, op);
        int i = mpz_get_ui(rop);
        self.assert.equal(i, 5);
        rop = new GMP.Integer();
        op = new GMP.Integer(18);
        mpz_sqrt(rop, op);
        i = mpz_get_ui(rop);
        self.assert.equal(i, 4);
    }

    function test_mpz_ui_sqrtrem() {
        var rop1 = new GMP.Integer();
        var rop2 = new GMP.Integer();
        var op = new GMP.Integer(34);
        mpz_sqrtrem(rop1, rop2, op);
        int i = mpz_get_ui(rop1);
        int j = mpz_get_ui(rop2);
        self.assert.equal(i, 5);
        self.assert.equal(j, 9);
        rop1 = new GMP.Integer();
        rop2 = new GMP.Integer();
        op = new GMP.Integer(18);
        mpz_sqrtrem(rop1, rop2, op);
        i = mpz_get_ui(rop1);
        j = mpz_get_ui(rop2);
        self.assert.equal(i, 4);
        self.assert.equal(j, 2);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Sqrt);
}
