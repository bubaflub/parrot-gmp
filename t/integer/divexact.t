$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Divexact {
    function test_mpz_divexact() {
        var q = new GMP.Integer();
        var n = new GMP.Integer(32);
        var d = new GMP.Integer(8);
        mpz_divexact(q, n, d);
        int i = mpz_get_ui(q);
        self.assert.equal(i, 4);
        q = new GMP.Integer();
        n = new GMP.Integer(90);
        d = new GMP.Integer(3);
        mpz_divexact(q, n, d);
        i = mpz_get_ui(q);
        self.assert.equal(i, 30);
    }

    function test_mpz_divexact_ui() {
        var q = new GMP.Integer();
        var n = new GMP.Integer(32);
        int d = 8;
        mpz_divexact_ui(q, n, d);
        int i = mpz_get_ui(q);
        self.assert.equal(i, 4);
        q = new GMP.Integer();
        n = new GMP.Integer(90);
        d = 3;
        mpz_divexact_ui(q, n, d);
        i = mpz_get_ui(q);
        self.assert.equal(i, 30);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Divexact);
}
