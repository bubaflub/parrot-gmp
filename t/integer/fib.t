$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Fib {
    function test_mpz_fib_ui() {
        var fn = new GMP.Integer();
        int n = 30;
        mpz_fib_ui(fn, n);
        int i = mpz_get_ui(fn);
        self.assert.equal(i, 832040);
        fn = new GMP.Integer();
        n = 19;
        mpz_fib_ui(fn, n);
        i = mpz_get_ui(fn);
        self.assert.equal(i, 4181);
    }

    function test_mpz_fib2_ui() {
        var fn = new GMP.Integer();
        var fnsub1 = new GMP.Integer();
        int n = 30;
        mpz_fib2_ui(fn, fnsub1, n);
        int i = mpz_get_ui(fn);
        int j = mpz_get_ui(fnsub1);
        self.assert.equal(i, 832040);
        self.assert.equal(j, 514229);
        fn = new GMP.Integer();
        fnsub1 = new GMP.Integer();
        n = 19;
        mpz_fib2_ui(fn, fnsub1, n);
        i = mpz_get_ui(fn);
        j = mpz_get_ui(fnsub1);
        self.assert.equal(i, 4181);
        self.assert.equal(j, 2584);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Fib);
}
