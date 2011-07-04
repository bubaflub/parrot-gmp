$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_sub {
    function test_mpz_sub() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(32);
        var z = new GMP.Integer(30);
        x = y - z;
        int i = mpz_get_ui(x);
        self.assert.equal(i, 2);
        x = x - y;
        i = mpz_get_si(x);
        self.assert.equal(i, -30);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_sub);
}
