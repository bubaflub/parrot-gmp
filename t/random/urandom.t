$load "rosella/test.pbc";
$load "GMP/Random.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
  class Integer;
}

class Test_GMP_Urandom {
    function test_gmp_urandomb_ui() {
        using GMP.Common.gmp_randstate_t;
        var t = gmp_randstate_t();
        var state = t.alloc();
        using gmp_randinit_default;
        gmp_randinit_default(state);
        var seed = new GMP.Integer(35);
        using gmp_randseed;
        gmp_randseed(state, seed);
        int n = 5;
        using gmp_urandomb_ui;
        int i = gmp_urandomb_ui(state, n);
    }

    function test_gmp_urandomm_ui() {
        using GMP.Common.gmp_randstate_t;
        var t = gmp_randstate_t();
        var state = t.alloc();
        using gmp_randinit_default;
        gmp_randinit_default(state);
        int seed = 35;
        using gmp_randseed_ui;
        gmp_randseed_ui(state, 35);
        int n = 59;
        using gmp_urandomm_ui;
        int i = gmp_urandomm_ui(state, n);
    }

}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Urandom);
}

