$load "rosella/test.pbc";
$load "src/GMP/Random.pbc";

class Test_GMP_Randinit {
    function test_gmp_randinit_default() {
        using GMP.Common.gmp_randstate_t;
        var t = gmp_randstate_t();
        var state = t.alloc();
        using gmp_randinit_default;
        gmp_randinit_default(state);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Randinit);
}

