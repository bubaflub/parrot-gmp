$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_is_equal_string {
    function test_mpz_is_equal_string() {
        var x = new GMP.Integer(30);
        string y = "30";
        int i = x == y;
        self.assert.equal(i, 1);
        y = "-24";
        i = x == y;
        self.assert.equal(i, 0);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_is_equal_string);
}
