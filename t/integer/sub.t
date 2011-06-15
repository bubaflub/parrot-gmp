$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Sub {
    function test_mpz_sub() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(30);
        var z = new GMP.Integer(34);
        mpz_sub(x, y, z);
        int i = mpz_get_si(x);
        self.assert.equal(i, -4);
    }

    function test_mpz_sub_ui() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(30);
        int z = 34;
        mpz_sub_ui(x, y, z);
        int i = mpz_get_si(x);
        self.assert.equal(i, -4);
    }

    function test_mpz_ui_sub() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(30);
        int z = 34;
        mpz_ui_sub(x, z, y);
        int i = mpz_get_si(x);
        self.assert.equal(i, 4);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Sub);
}
