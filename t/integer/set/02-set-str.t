$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Set_Str {
    function test_mpz_set_str_base_ten() {
        var x = new GMP.Integer();
        mpz_set_str(x, "10", 10);
        int i = mpz_get_ui(x);
        self.assert.equal(i, 10);
        mpz_set_str(x, "-11", 10);
        i = mpz_get_si(x);
        self.assert.equal(i, -11);
    }

    function test_mpz_set_str_not_base_ten() {
        var x = new GMP.Integer();
        mpz_set_str(x, "0xF", 0);
        int i = mpz_get_ui(x);
        self.assert.equal(i, 15);
        mpz_set_str(x, "a", 62);
        i = mpz_get_ui(x);
        self.assert.equal(i, 36);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Set_Str);
}
