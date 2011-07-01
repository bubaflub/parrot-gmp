$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Add {
    function test_mpz_add() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(30);
        var z = new GMP.Integer(34);
        mpz_add(x, y, z);
        int i = mpz_get_ui(x);
        self.assert.equal(i, 64);
    }

    function test_mpz_add_ui() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(30);
        int z = 34;
        mpz_add_ui(x, y, z);
        int i = mpz_get_ui(x);
        self.assert.equal(i, 64);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Add);
}
