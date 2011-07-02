$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_get_string {
    function test_mpz_get_string() {
        var x = new GMP.Integer("34");
        string s = x;
        self.assert.equal(s, "34");
        x = new GMP.Integer("-546765359356");
        s = x;
        self.assert.equal(s, "-546765359356");
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_get_string);
}
