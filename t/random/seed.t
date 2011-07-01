$load "rosella/test.pbc";
$load "GMP/Random.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
  class Integer;
}

class Test_GMP_Randseed {
    function test_gmp_randseed() {
        using GMP.Common.gmp_randstate_t;
        var t = gmp_randstate_t();
        var state = t.alloc();
        using gmp_randinit_default;
        gmp_randinit_default(state);
        var seed = new GMP.Integer(35);
        using gmp_randseed;
        gmp_randseed(state, seed);
    }

    function test_gmp_randseed_ui() {
        using GMP.Common.gmp_randstate_t;
        var t = gmp_randstate_t();
        var state = t.alloc();
        using gmp_randinit_default;
        gmp_randinit_default(state);
        int seed = 35;
        using gmp_randseed_ui;
        gmp_randseed_ui(state, 35);
    }

}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Randseed);
}

