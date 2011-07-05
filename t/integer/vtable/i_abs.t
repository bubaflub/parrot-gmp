$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_i_abs {
    function test_mpz_i_abs() {
        var x = new GMP.Integer(30);
        ${ abs x};
        int i = mpz_get_ui(x);
        self.assert.equal(i, 30);
        x = new GMP.Integer(-24);
        ${ abs x};
        i = mpz_get_ui(x);
        self.assert.equal(i, 24);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_i_abs);
}
