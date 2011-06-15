$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Abs {
    function test_mpz_abs() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(-30);
        mpz_abs(x, y);
        int i = mpz_get_si(x);
        self.assert.equal(i, 30);
        mpz_abs(x, x);
        i = mpz_get_si(x);
        self.assert.equal(i, 30);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Abs);
}
