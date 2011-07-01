$load "rosella/test.pbc";
$load "GMP/Random.pbc";

class Test_GMP_Randclear {
    function test_gmp_randclear() {
        using GMP.Common.gmp_randstate_t;
        var t = gmp_randstate_t();
        var state = t.alloc();
        using gmp_randinit_default;
        gmp_randinit_default(state);
        using gmp_randclear;
        gmp_randclear(state);
    }

}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Randclear);
}

