$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_decrement {
    function test_mpz_decrement() {
        var x = new GMP.Integer(30);
        ${ dec x };
        int i = mpz_get_ui(x);
        self.assert.equal(i, 29);
        ${ dec x };
        i = mpz_get_ui(x);
        self.assert.equal(i, 28);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_decrement);
}
