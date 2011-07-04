$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Vtable_i_mul_float {
    function test_mpz_i_mul_float() {
        var x = new GMP.Integer(30);
        float y = 32.1;
        ${ mul x, y};
        int i = mpz_get_ui(x);
        self.assert.equal(i, 960);
        ${ mul x, y};
        i = mpz_get_ui(x);
        self.assert.equal(i, 30720);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Vtable_i_mul_float);
}
