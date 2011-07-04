$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_i_sub_int {
    function test_mpz_i_sub_int() {
        var x = new GMP.Integer(30);
        int y = 32;
        ${ sub x, y};
        int i = mpz_get_si(x);
        self.assert.equal(i, -2);
        ${ sub x, y};
        i = mpz_get_si(x);
        self.assert.equal(i, -34);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_i_sub_int);
}
