$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_mod {
    function test_mpz_mod() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(30);
        var z = new GMP.Integer(32);
        ${ mod x, y, z};
        int i = mpz_get_ui(x);
        self.assert.equal(i, 30);
        ${ mod x, z, y};
        i = mpz_get_ui(x);
        self.assert.equal(i, 2);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_mod);
}
