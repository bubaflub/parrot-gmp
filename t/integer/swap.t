$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Swap {
    function test_mpz_swap() {
        var x = new GMP.Integer(30);
        var y = new GMP.Integer(32);
        mpz_swap(x, y);
        int i = mpz_get_ui(x);
        self.assert.equal(i, 32);
        int j = mpz_get_ui(y);
        self.assert.equal(j, 30);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Swap);
}
