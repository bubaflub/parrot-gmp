$load "rosella/test.pbc";
$load "GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Remove {
    function test_mpz_remove() {
        var rop = new GMP.Integer();
        var op = new GMP.Integer(24);
        var f = new GMP.Integer(2);
        int j = mpz_remove(rop, op, f);
        int i = mpz_get_ui(rop);
        self.assert.equal(i, 3);
        self.assert.equal(j, 3);
        rop = new GMP.Integer();
        op = new GMP.Integer(25);
        f = new GMP.Integer(5);
        j = mpz_remove(rop, op, f);
        i = mpz_get_ui(rop);
        self.assert.equal(i, 1);
        self.assert.equal(j, 2);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Remove);
}
