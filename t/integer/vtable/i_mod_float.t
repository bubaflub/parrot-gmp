$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_i_mod_float {
    function test_mpz_i_mod_float() {
        var x = new GMP.Integer(32);
        float y = 30.1;
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
    test(class Test_GMP_Vtable_i_mod_float);
}
