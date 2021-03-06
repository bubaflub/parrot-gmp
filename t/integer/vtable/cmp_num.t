$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_cmp_num {
    function test_mpz_cmp_num() {
        var x = new GMP.Integer(30);
        int y = 29;
        int i = x > y;
        self.assert.is_true(x > y);
        y = 31;
        self.assert.is_true(x < y);
        y = 30;
        self.assert.is_true(x == y);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_cmp_num);
}
