$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_AddMul {
    function test_mpz_addmul() {
        var x = new GMP.Integer(10);
        var y = new GMP.Integer(30);
        var z = new GMP.Integer(34);
        mpz_addmul(x, y, z);
        int i = mpz_get_ui(x);
        self.assert.equal(i, 1030);
    }

    function test_mpz_addmul_ui() {
        var x = new GMP.Integer(10);
        var y = new GMP.Integer(30);
        int z = 34;
        mpz_addmul_ui(x, y, z);
        int i = mpz_get_ui(x);
        self.assert.equal(i, 1030);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_AddMul);
}
