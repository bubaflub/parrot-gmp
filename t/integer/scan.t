$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Scan {
    function test_mpz_scan0() {
        var op = new GMP.Integer(89);
        int starting_bit = 0;
        int i = mpz_scan0(op, starting_bit);
        self.assert.equal(i, 1);
        op = new GMP.Integer(23);
        starting_bit = 1;
        i = mpz_scan0(op, starting_bit);
        self.assert.equal(i, 3);
    }

    function test_mpz_scan1() {
        var op = new GMP.Integer(89);
        int starting_bit = 0;
        int i = mpz_scan1(op, starting_bit);
        self.assert.equal(i, 0);
        op = new GMP.Integer(23);
        starting_bit = 1;
        i = mpz_scan1(op, starting_bit);
        self.assert.equal(i, 1);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Scan);
}
