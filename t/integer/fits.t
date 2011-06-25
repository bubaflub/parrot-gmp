$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Fits {
    function test_mpz_fits_ulong_p() {
        var op = new GMP.Integer("18446744073709551616");
        int i = mpz_fits_ulong_p(op);
        self.assert.equal(i, 0);
        op = new GMP.Integer("18446744073709551615");
        i = mpz_fits_ulong_p(op);
        self.assert.not_equal(i, 0);
    }

    function test_mpz_fits_slong_p() {
        var op = new GMP.Integer("9223372036854775808");
        int i = mpz_fits_slong_p(op);
        self.assert.equal(i, 0);
        op = new GMP.Integer("9223372036854775807");
        i = mpz_fits_slong_p(op);
        self.assert.not_equal(i, 0);
    }

    function test_mpz_fits_uint_p() {
        var op = new GMP.Integer("4294967296");
        int i = mpz_fits_uint_p(op);
        self.assert.equal(i, 0);
        op = new GMP.Integer("4294967295");
        i = mpz_fits_uint_p(op);
        self.assert.not_equal(i, 0);
    }

    function test_mpz_fits_sint_p() {
        var op = new GMP.Integer("2147483648");
        int i = mpz_fits_sint_p(op);
        self.assert.equal(i, 0);
        op = new GMP.Integer("2147483647");
        i = mpz_fits_sint_p(op);
        self.assert.not_equal(i, 0);
    }

    function test_mpz_fits_ushort_p() {
        var op = new GMP.Integer("65536");
        int i = mpz_fits_ushort_p(op);
        self.assert.equal(i, 0);
        op = new GMP.Integer("65535");
        i = mpz_fits_ushort_p(op);
        self.assert.not_equal(i, 0);
    }

    function test_mpz_fits_sshort_p() {
        var op = new GMP.Integer("32768");
        int i = mpz_fits_sshort_p(op);
        self.assert.equal(i, 0);
        op = new GMP.Integer("32767");
        i = mpz_fits_sshort_p(op);
        self.assert.not_equal(i, 0);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Fits);
}
