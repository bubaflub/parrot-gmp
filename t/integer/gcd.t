$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Gcd {
    function test_mpz_gcd() {
        var rop = new GMP.Integer();
        var op1 = new GMP.Integer(30);
        var op2 = new GMP.Integer(8);
        mpz_gcd(rop, op1, op2);
        int i = mpz_get_ui(rop);
        self.assert.equal(i, 2);
        rop = new GMP.Integer();
        op1 = new GMP.Integer(89);
        op2 = new GMP.Integer(23);
        mpz_gcd(rop, op1, op2);
        i = mpz_get_ui(rop);
        self.assert.equal(i, 1);
    }

    function test_mpz_gcd_ui() {
        var rop = new GMP.Integer();
        var op1 = new GMP.Integer(30);
        int op2 = 8;
        int j = mpz_gcd_ui(rop, op1, op2);
        int i = mpz_get_ui(rop);
        self.assert.equal(i, 2);
        self.assert.equal(j, 2);
        rop = new GMP.Integer();
        op1 = new GMP.Integer(89);
        op2 = 23;
        j = mpz_gcd_ui(rop, op1, op2);
        i = mpz_get_ui(rop);
        self.assert.equal(i, 1);
        self.assert.equal(j, 1);
    }

    function test_mpz_gcdext() {
        var g = new GMP.Integer();
        var s = new GMP.Integer();
        var t = new GMP.Integer();
        var a = new GMP.Integer(30);
        var b = new GMP.Integer(8);
        mpz_gcdext(g, s, t, a, b);
        int i = mpz_get_si(g);
        int j = mpz_get_si(s);
        int k = mpz_get_si(t);
        self.assert.equal(i, 2);
        self.assert.equal(j, -1);
        self.assert.equal(k, 4);
        g = new GMP.Integer();
        s = new GMP.Integer();
        t = new GMP.Integer();
        a = new GMP.Integer(89);
        b = new GMP.Integer(23);
        mpz_gcdext(g, s, t, a, b);
        i = mpz_get_si(g);
        j = mpz_get_si(s);
        k = mpz_get_si(t);
        self.assert.equal(i, 1);
        self.assert.equal(j, -8);
        self.assert.equal(k, 31);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Gcd);
}
