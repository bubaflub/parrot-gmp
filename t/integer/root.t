$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Root {
    function test_mpz_root() {
        var rop = new GMP.Integer();
        var op = new GMP.Integer(34);
        int n = 3;
        int i = mpz_root(rop, op, n);
        int j = mpz_get_ui(rop);
        self.assert.equal(i, 0);
        self.assert.equal(j, 3);
        rop = new GMP.Integer();
        op = new GMP.Integer(18);
        n = 4;
        i = mpz_root(rop, op, n);
        j = mpz_get_ui(rop);
        self.assert.equal(i, 0);
        self.assert.equal(j, 2);
    }

    function test_mpz_ui_rootrem() {
        var root = new GMP.Integer();
        var rem = new GMP.Integer();
        var u = new GMP.Integer(34);
        int n = 3;
        mpz_rootrem(root, rem, u, n);
        int i = mpz_get_ui(root);
        int j = mpz_get_ui(rem);
        self.assert.equal(i, 3);
        self.assert.equal(j, 7);
        root = new GMP.Integer();
        rem = new GMP.Integer();
        u = new GMP.Integer(18);
        n = 4;
        mpz_rootrem(root, rem, u, n);
        i = mpz_get_ui(root);
        j = mpz_get_ui(rem);
        self.assert.equal(i, 2);
        self.assert.equal(j, 2);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Root);
}
