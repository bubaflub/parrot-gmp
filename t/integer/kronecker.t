$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Kronecker {
    function test_mpz_kronecker() {
        var a = new GMP.Integer(1);
        var b = new GMP.Integer(3);
        int i = mpz_kronecker(a, b);
        self.assert.equal(i, 1);
        a = new GMP.Integer(2);
        b = new GMP.Integer(3);
        i = mpz_kronecker(a, b);
        self.assert.equal(i, -1);
    }

    function test_mpz_kronecker_si() {
        var a = new GMP.Integer(1);
        int b = 3;
        int i = mpz_kronecker_si(a, b);
        self.assert.equal(i, 1);
        a = new GMP.Integer(2);
        b = 3;
        i = mpz_kronecker_si(a, b);
        self.assert.equal(i, -1);
    }

    function test_mpz_kronecker_ui() {
        var a = new GMP.Integer(1);
        int b = 3;
        int i = mpz_kronecker_ui(a, b);
        self.assert.equal(i, 1);
        a = new GMP.Integer(2);
        b = 3;
        i = mpz_kronecker_ui(a, b);
        self.assert.equal(i, -1);
    }

    function test_mpz_si_kronecker() {
        int a = 1;
        var b = new GMP.Integer(3);
        int i = mpz_si_kronecker(a, b);
        self.assert.equal(i, 1);
        a = 2;
        b = new GMP.Integer(3);
        i = mpz_si_kronecker(a, b);
        self.assert.equal(i, -1);
    }

    function test_mpz_ui_kronecker() {
        int a = 1;
        var b = new GMP.Integer(3);
        int i = mpz_ui_kronecker(a, b);
        self.assert.equal(i, 1);
        a = 2;
        b = new GMP.Integer(3);
        i = mpz_ui_kronecker(a, b);
        self.assert.equal(i, -1);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Kronecker);
}
