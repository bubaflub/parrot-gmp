$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_i_add {
    function test_mpz_i_add() {
        var x = new GMP.Integer(30);
        var y = new GMP.Integer(32);
        ${ add x, y};
        int i = mpz_get_ui(x);
        self.assert.equal(i, 62);
        ${ add x, y};
        i = mpz_get_ui(x);
        self.assert.equal(i, 94);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_i_add);
}
