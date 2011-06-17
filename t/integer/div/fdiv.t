$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Fdiv {
    function test_mpz_fdiv_q() {
        var q = new GMP.Integer();
        var n = new GMP.Integer(30);
        var d = new GMP.Integer(8);
        mpz_fdiv_q(q, n, d);
        int i = mpz_get_ui(q);
        self.assert.equal(i, 3);
        q = new GMP.Integer();
        n = new GMP.Integer(4);
        d = new GMP.Integer(3);
        mpz_fdiv_q(q, n, d);
        i = mpz_get_ui(q);
        self.assert.equal(i, 1);
    }

    function test_mpz_fdiv_r() {
        var r = new GMP.Integer();
        var n = new GMP.Integer(30);
        var d = new GMP.Integer(8);
        mpz_fdiv_r(r, n, d);
        int i = mpz_get_si(r);
        self.assert.equal(i, 6);
        r = new GMP.Integer();
        n = new GMP.Integer(4);
        d = new GMP.Integer(3);
        mpz_fdiv_r(r, n, d);
        i = mpz_get_si(r);
        self.assert.equal(i, 1);
    }

    function test_mpz_fdiv_qr() {
        var q = new GMP.Integer();
        var r = new GMP.Integer();
        var n = new GMP.Integer(30);
        var d = new GMP.Integer(8);
        mpz_fdiv_qr(q, r, n, d);
        int i = mpz_get_si(r);
        int j = mpz_get_si(q);
        self.assert.equal(i, 6);
        self.assert.equal(j, 3);
        q = new GMP.Integer();
        r = new GMP.Integer();
        n = new GMP.Integer(4);
        d = new GMP.Integer(3);
        mpz_fdiv_qr(q, r, n, d);
        i = mpz_get_si(r);
        j = mpz_get_si(q);
        self.assert.equal(i, 1);
        self.assert.equal(j, 1);
    }

    function test_mpz_fdiv_q_ui() {
        var q = new GMP.Integer();
        var n = new GMP.Integer(30);
        int d = 8;
        int j = mpz_fdiv_q_ui(q, n, d);
        int i = mpz_get_ui(q);
        self.assert.equal(i, 3);
        self.assert.equal(j, 6);
        q = new GMP.Integer();
        n = new GMP.Integer(4);
        d = 3;
        j = mpz_fdiv_q_ui(q, n, d);
        i = mpz_get_ui(q);
        self.assert.equal(i, 1);
        self.assert.equal(j, 1);
    }

    function test_mpz_fdiv_r_ui() {
        var r = new GMP.Integer();
        var n = new GMP.Integer(30);
        int d = 8;
        int j = mpz_fdiv_r_ui(r, n, d);
        int i = mpz_get_ui(r);
        self.assert.equal(i, 6);
        self.assert.equal(j, 6);
        r = new GMP.Integer();
        n = new GMP.Integer(4);
        d = 3;
        j = mpz_fdiv_r_ui(r, n, d);
        i = mpz_get_ui(r);
        self.assert.equal(i, 1);
        self.assert.equal(j, 1);
    }

    function test_mpz_fdiv_qr_ui() {
        var q = new GMP.Integer();
        var r = new GMP.Integer();
        var n = new GMP.Integer(30);
        int d = 8;
        int j = mpz_fdiv_qr_ui(q, r, n, d);
        int i = mpz_get_ui(r);
        int k = mpz_get_ui(q);
        self.assert.equal(k, 3);
        self.assert.equal(i, 6);
        self.assert.equal(j, 6);
        q = new GMP.Integer();
        r = new GMP.Integer();
        n = new GMP.Integer(4);
        d = 3;
        j = mpz_fdiv_qr_ui(q, r, n, d);
        i = mpz_get_ui(r);
        k = mpz_get_ui(q);
        self.assert.equal(k, 1);
        self.assert.equal(i, 1);
        self.assert.equal(j, 1);
    }

    function test_mpz_fdiv_ui() {
        var n = new GMP.Integer(30);
        int d = 8;
        int i = mpz_fdiv_ui(n, d);
        self.assert.equal(i, 6);
        n = new GMP.Integer(4);
        d = 3;
        i = mpz_fdiv_ui(n, d);
        self.assert.equal(i, 1);
    }

    function test_mpz_fdiv_q_2exp() {
        var q = new GMP.Integer();
        var n = new GMP.Integer(30);
        int b = 3;
        mpz_fdiv_q_2exp(q, n, b);
        int i = mpz_get_si(q);
        self.assert.equal(i, 3);
        q = new GMP.Integer();
        n = new GMP.Integer(4);
        b = 1;
        mpz_fdiv_q_2exp(q, n, b);
        i = mpz_get_si(q);
        self.assert.equal(i, 2);
    }

    function test_mpz_fdiv_r_2exp() {
        var r = new GMP.Integer();
        var n = new GMP.Integer(30);
        int b = 3;
        mpz_fdiv_r_2exp(r, n, b);
        int i = mpz_get_si(r);
        self.assert.equal(i, 6);
        r = new GMP.Integer();
        n = new GMP.Integer(4);
        b = 1;
        mpz_fdiv_r_2exp(r, n, b);
        i = mpz_get_si(r);
        self.assert.equal(i, 0);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Fdiv);
}
