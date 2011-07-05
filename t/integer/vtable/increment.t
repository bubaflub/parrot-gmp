$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_increment {
    function test_mpz_increment() {
        var x = new GMP.Integer(30);
        ${ inc x };
        int i = mpz_get_ui(x);
        self.assert.equal(i, 31);
        ${ inc x };
        i = mpz_get_ui(x);
        self.assert.equal(i, 32);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_increment);
}
