$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_neg {
    function test_mpz_neg() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(30);
        ${ neg x, y };
        int i = mpz_get_si(x);
        self.assert.equal(i, -30);
        y = new GMP.Integer(-24);
        ${ neg x, y };
        i = mpz_get_ui(x);
        self.assert.equal(i, 24);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_neg);
}
