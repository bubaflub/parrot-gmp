$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Fac {
    function test_mpz_fac_ui() {
        var rop = new GMP.Integer();
        int op = 0;
        mpz_fac_ui(rop, op);
        int i = mpz_get_ui(rop);
        self.assert.equal(i, 1);
        rop = new GMP.Integer();
        op = 10;
        mpz_fac_ui(rop, op);
        i = mpz_get_ui(rop);
        self.assert.equal(i, 3628800);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Fac);
}
