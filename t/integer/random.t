$load "rosella/test.pbc";
$load "GMP/Random.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Random {
    function test_mpz_urandomb() {
        var rop = new GMP.Integer();
        using GMP.Common.gmp_randstate_t;
        var t = gmp_randstate_t();
        var state = t.alloc();
        gmp_randinit_default(state);
        int n = 5;
        mpz_urandomb(rop, state, n);
        mpz_urandomb(rop, state, n);
    }

    function test_mpz_urandomm() {
        var rop = new GMP.Integer();
        using GMP.Common.gmp_randstate_t;
        var t = gmp_randstate_t();
        var state = t.alloc();
        gmp_randinit_default(state);
        var n = new GMP.Integer(30);
        mpz_urandomm(rop, state, n);
        mpz_urandomm(rop, state, n);
    }

    function test_mpz_rrandomb() {
        var rop = new GMP.Integer();
        using GMP.Common.gmp_randstate_t;
        var t = gmp_randstate_t();
        var state = t.alloc();
        gmp_randinit_default(state);
        int n = 5;
        mpz_rrandomb(rop, state, n);
        mpz_rrandomb(rop, state, n);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Random);
}
