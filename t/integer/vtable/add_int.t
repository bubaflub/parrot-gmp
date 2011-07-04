$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_add_int {
    function test_mpz_add_int() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(30);
        int z = 32;
        ${ add x, y, z};
        int i = mpz_get_ui(x);
        self.assert.equal(i, 62);
        ${ add x, x, z};
        i = mpz_get_ui(x);
        self.assert.equal(i, 94);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_add_int);
}
