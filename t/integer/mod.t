$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Mod {
    function test_mpz_mod() {
        var r = new GMP.Integer();
        var n = new GMP.Integer(30);
        var d = new GMP.Integer(8);
        mpz_mod(r, n, d);
        int i = mpz_get_ui(r);
        self.assert.equal(i, 6);
        r = new GMP.Integer();
        n = new GMP.Integer(89);
        d = new GMP.Integer(23);
        mpz_mod(r, n, d);
        i = mpz_get_ui(r);
        self.assert.equal(i, 20);
    }

    function test_mpz_mod_ui() {
        var r = new GMP.Integer();
        var n = new GMP.Integer(30);
        int d = 8;
        int j = mpz_mod_ui(r, n, d);
        int i = mpz_get_ui(r);
        self.assert.equal(i, 6);
        self.assert.equal(j, 6);
        r = new GMP.Integer();
        n = new GMP.Integer(89);
        d = 23;
        j = mpz_mod_ui(r, n, d);
        i = mpz_get_ui(r);
        self.assert.equal(i, 20);
        self.assert.equal(j, 20);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Mod);
}
