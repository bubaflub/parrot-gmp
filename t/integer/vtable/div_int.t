$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_div_int {
    function test_mpz_div_int() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(65);
        int z = 32;
        ${ div x, y, z};
        int i = mpz_get_ui(x);
        self.assert.equal(i, 2);
        ${ div x, x, z};
        i = mpz_get_ui(x);
        self.assert.equal(i, 0);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_div_int);
}
