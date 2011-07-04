$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_sub_int {
    function test_mpz_sub_int() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(32);
        int z = 30;
        ${ sub x, y, z};
        int i = mpz_get_ui(x);
        self.assert.equal(i, 2);
        ${ sub x, x, z};
        i = mpz_get_si(x);
        self.assert.equal(i, -28);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_sub_int);
}
