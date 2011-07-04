$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_add {
    function test_mpz_add() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(30);
        var z = new GMP.Integer(32);
        x = y + z;
        int i = mpz_get_ui(x);
        self.assert.equal(i, 62);
        x = x + y;
        i = mpz_get_ui(x);
        self.assert.equal(i, 92);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_add);
}
