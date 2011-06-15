$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
    class Integer;
}

class Test_GMP_Get_Str {
    function test_mpz_get_str_base_ten() {
        var x = new GMP.Integer(30);
        string s = mpz_get_str("", 10, x);
        self.assert.equal(s, "30");
        x = new GMP.Integer(-34);
        s = mpz_get_str("", 10, x);
        self.assert.equal(s, "-34");
    }

    function test_mpz_get_str_not_base_ten() {
        var x = new GMP.Integer(50);
        string s = mpz_get_str("", 26, x);
        self.assert.equal(s, "1o");
        x = new GMP.Integer(15);
        s = mpz_get_str("", 16, x);
        self.assert.equal(s, "f");
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Get_Str);
}
