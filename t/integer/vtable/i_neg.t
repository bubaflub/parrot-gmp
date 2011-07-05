$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_i_neg {
    function test_mpz_i_neg() {
        var x = new GMP.Integer(30);
        ${ neg x };
        int i = mpz_get_si(x);
        self.assert.equal(i, -30);
        x = new GMP.Integer(-24);
        ${ neg x };
        i = mpz_get_ui(x);
        self.assert.equal(i, 24);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_i_neg);
}
