$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_i_fdiv_int {
    function test_mpz_i_fdiv_int() {
        var x = new GMP.Integer(65);
        int y = 32;
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
    test(class Test_GMP_Vtable_i_fdiv_int);
}
