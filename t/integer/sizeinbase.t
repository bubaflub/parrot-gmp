$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Sizeinbase {
    function test_mpz_sizeinbase() {
        var op = new GMP.Integer("3469");
        int base = 10;
        int i = mpz_sizeinbase(op, base);
        self.assert.equal(i, 4);
        op = new GMP.Integer("400");
        base = 30;
        i = mpz_sizeinbase(op, base);
        self.assert.equal(i, 2);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Sizeinbase);
}
