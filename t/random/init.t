$load "rosella/test.pbc";
$load "src/GMP/Random.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
  class Integer;
}

class Test_GMP_Randinit {
    function test_gmp_randinit_default() {
        using GMP.Common.gmp_randstate_t;
        var t = gmp_randstate_t();
        var state = t.alloc();
        using gmp_randinit_default;
        gmp_randinit_default(state);
    }

    function test_gmp_randinit_mt() {
        using GMP.Common.gmp_randstate_t;
        var t = gmp_randstate_t();
        var state = t.alloc();
        using gmp_randinit_mt;
        gmp_randinit_mt(state);
    }

    function test_gmp_randinit_lc_2exp() {
        using GMP.Common.gmp_randstate_t;
        var t = gmp_randstate_t();
        var state = t.alloc();
        var a = new GMP.Integer(3);
        int c = 4;
        int m2exp = 5;
        using gmp_randinit_lc_2exp;
        gmp_randinit_lc_2exp(state, a, c, m2exp);
    }

    function test_gmp_randinit_lc_2exp_size() {
        using GMP.Common.gmp_randstate_t;
        var t = gmp_randstate_t();
        var state = t.alloc();
        int size = 4;
        using gmp_randinit_lc_2exp_size;
        gmp_randinit_lc_2exp_size(state, size);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Randinit);
}

