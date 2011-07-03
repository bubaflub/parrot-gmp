$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_set_string_native {
    function test_mpz_set_string_native() {
        var x = new GMP.Integer("34");
        ${ set x, "35"};
        int i = mpz_get_ui(x);
        self.assert.equal(i, 35);
        x = new GMP.Integer("-546765359356");
        ${ set x, "-35"};
        i = mpz_get_si(x);
        self.assert.equal(i, -35);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_set_string_native);
}
