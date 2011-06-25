$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Size {
    function test_mpz_size() {
        var op = new GMP.Integer("3469");
        int n = 0;
        int i = mpz_getlimbn(op, n);
        self.assert.equal(i, 3469);
        op = new GMP.Integer("4000000000000000000000");
        n = 1;
        i = mpz_getlimbn(op, n);
        self.assert.equal(i, 216);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Size);
}
