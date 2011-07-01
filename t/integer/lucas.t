$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Lucnum {
    function test_mpz_lucnum_ui() {
        var fn = new GMP.Integer();
        int n = 30;
        mpz_lucnum_ui(fn, n);
        int i = mpz_get_ui(fn);
        self.assert.equal(i, 1860498);
        fn = new GMP.Integer();
        n = 19;
        mpz_lucnum_ui(fn, n);
        i = mpz_get_ui(fn);
        self.assert.equal(i, 9349);
    }

    function test_mpz_lucnum2_ui() {
        var fn = new GMP.Integer();
        var fnsub1 = new GMP.Integer();
        int n = 30;
        mpz_lucnum2_ui(fn, fnsub1, n);
        int i = mpz_get_ui(fn);
        int j = mpz_get_ui(fnsub1);
        self.assert.equal(i, 1860498);
        self.assert.equal(j, 1149851);
        fn = new GMP.Integer();
        fnsub1 = new GMP.Integer();
        n = 19;
        mpz_lucnum2_ui(fn, fnsub1, n);
        i = mpz_get_ui(fn);
        j = mpz_get_ui(fnsub1);
        self.assert.equal(i, 9349);
        self.assert.equal(j, 5778);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Lucnum);
}
