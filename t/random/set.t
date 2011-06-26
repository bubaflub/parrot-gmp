$load "rosella/test.pbc";
$load "src/GMP/Random.pbc";

class Test_GMP_Randset {
    function test_gmp_randset() {
        using GMP.Common.gmp_randstate_t;
        var t = gmp_randstate_t();
        var op = t.alloc();
        using gmp_randinit_default;
        gmp_randinit_default(op);
        var rop = t.alloc();
        using gmp_randinit_set;
        gmp_randinit_set(rop, op);
    }

}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Randset);
}

