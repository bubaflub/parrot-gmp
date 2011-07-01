$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Size {
    function test_mpz_size() {
        var op = new GMP.Integer("3469");
        int i = mpz_size(op);
        self.assert.equal(i, 1);
        op = new GMP.Integer("4000000000000000000000");
        i = mpz_size(op);
        self.assert.equal(i, 2);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Size);
}
