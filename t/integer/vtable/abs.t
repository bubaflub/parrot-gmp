$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_abs {
    function test_mpz_abs() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(30);
        ${ abs x, y };
        int i = mpz_get_ui(x);
        self.assert.equal(i, 30);
        y = new GMP.Integer(-24);
        ${ abs x, y };
        i = mpz_get_ui(x);
        self.assert.equal(i, 24);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_abs);
}
