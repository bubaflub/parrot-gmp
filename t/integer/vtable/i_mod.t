$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_i_mod {
    function test_mpz_i_mod() {
        var x = new GMP.Integer(32);
        var y = new GMP.Integer(30);
        ${ mod x, y};
        int i = mpz_get_ui(x);
        self.assert.equal(i, 2);
        x = new GMP.Integer(65);
        ${ mod x, y};
        i = mpz_get_ui(x);
        self.assert.equal(i, 5);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_i_mod);
}
