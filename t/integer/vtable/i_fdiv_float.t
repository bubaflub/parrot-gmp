$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_i_fdiv_float {
    function test_mpz_i_fdiv_float() {
        var x = new GMP.Integer(65);
        float y = 32.1;
        ${ fdiv x, y};
        int i = mpz_get_ui(x);
        self.assert.equal(i, 2);
        ${ fdiv x, y};
        i = mpz_get_ui(x);
        self.assert.equal(i, 0);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_i_fdiv_float);
}
