$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_mod_float {
    function test_mpz_mod_float() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(30);
        float z = 32.1;
        ${ mod x, y, z};
        int i = mpz_get_ui(x);
        self.assert.equal(i, 30);
        y = new GMP.Integer(65);
        ${ mod x, y, z};
        i = mpz_get_ui(x);
        self.assert.equal(i, 1);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_mod_float);
}
