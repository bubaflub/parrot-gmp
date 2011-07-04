$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_mul_int {
    function test_mpz_mul_int() {
        var x = new GMP.Integer();
        var y = new GMP.Integer(30);
        int z = 32;
        ${ mul x, y, z};
        int i = mpz_get_ui(x);
        self.assert.equal(i, 960);
        ${ mul x, x, z};
        i = mpz_get_ui(x);
        self.assert.equal(i, 30720);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_mul_int);
}
