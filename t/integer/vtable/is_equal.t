$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_is_equal {
    function test_mpz_is_equal() {
        var x = new GMP.Integer(30);
        var y = new GMP.Integer(30);
        self.assert.equal(x, y);
        y = new GMP.Integer(-24);
        self.assert.not_equal(x, y);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_is_equal);
}
