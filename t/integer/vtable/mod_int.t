$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_mod_int {
    function test_mpz_mod_int() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(32);
        int z = 30;
        ${ mod x, y, z};
        int i = mpz_get_ui(x);
        self.assert.equal(i, 2);
        y = new GMP.Integer(65);
        ${ mod x, y, z};
        i = mpz_get_ui(x);
        self.assert.equal(i, 5);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_mod_int);
}
