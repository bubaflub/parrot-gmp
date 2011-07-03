$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_get_bool {
    function test_mpz_get_bool() {
        var x = new GMP.Integer(34);
        self.assert.is_true(x);
        x = new GMP.Integer(0);
        self.assert.is_false(x);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_get_bool);
}
