$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_SubMul {
    function test_mpz_submul() {
        var x = new GMP.Integer(40);
        var y = new GMP.Integer(30);
        var z = new GMP.Integer(34);
        mpz_submul(x, y, z);
        int i = mpz_get_ui(x);
        self.assert.equal(i, 980);
    }

    function test_mpz_submul_ui() {
        var x = new GMP.Integer(40);
        var y = new GMP.Integer(30);
        int z = 34;
        mpz_submul_ui(x, y, z);
        int i = mpz_get_ui(x);
        self.assert.equal(i, 980);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_SubMul);
}
