$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Mul {
    function test_mpz_mul() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(30);
        var z = new GMP.Integer(34);
        mpz_mul(x, y, z);
        int i = mpz_get_ui(x);
        self.assert.equal(i, 1020);
    }

    function test_mpz_mul_ui() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(30);
        int z = 34;
        mpz_mul_ui(x, y, z);
        int i = mpz_get_ui(x);
        self.assert.equal(i, 1020);
    }

    function test_mpz_mul_si() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(30);
        int z = -34;
        mpz_mul_si(x, y, z);
        int i = mpz_get_si(x);
        self.assert.equal(i, -1020);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Mul);
}
