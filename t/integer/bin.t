$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Bin {
    function test_mpz_bin_ui() {
        var rop = new GMP.Integer();
        var n = new GMP.Integer(30);
        int k = 8;
        mpz_bin_ui(rop, n, k);
        int i = mpz_get_ui(rop);
        self.assert.equal(i, 5852925);
        rop = new GMP.Integer();
        n = new GMP.Integer(26);
        k = 23;
        mpz_bin_ui(rop, n, k);
        i = mpz_get_ui(rop);
        self.assert.equal(i, 2600);
    }

    function test_mpz_bin_uiui() {
        var rop = new GMP.Integer();
        int n = 30;
        int k = 8;
        mpz_bin_uiui(rop, n, k);
        int i = mpz_get_ui(rop);
        self.assert.equal(i, 5852925);
        rop = new GMP.Integer();
        n = 26;
        k = 23;
        mpz_bin_uiui(rop, n, k);
        i = mpz_get_ui(rop);
        self.assert.equal(i, 2600);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Bin);
}
