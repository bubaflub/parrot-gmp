$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Prime {
    function test_mpz_probab_prime_p() {
        var n = new GMP.Integer(71);
        int reps = 5;
        int i = mpz_probab_prime_p(n, reps);
        self.assert.not_equal(i, 0);
        n = new GMP.Integer(34);
        i = mpz_probab_prime_p(n, reps);
        self.assert.equal(i, 0);
    }

    function test_mpz_nextprime() {
        var rop = new GMP.Integer(9);
        var op = new GMP.Integer();
        mpz_nextprime(rop, op);
        int i = mpz_get_ui(rop);
        self.assert.not_equal(i, 11);
        op = new GMP.Integer(24);
        mpz_nextprime(rop, op);
        i = mpz_get_ui(rop);
        self.assert.equal(i, 29);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Prime);
}
