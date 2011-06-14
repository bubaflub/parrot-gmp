$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
  class Integer;
}

class Test_GMP_Init {

    function test_empty_init() {
        var x = new GMP.Integer();
        self.assert.instance_of(x, class GMP.Integer);
    }

    function test_integer_init() {
        var x = new GMP.Integer(32);
        self.assert.instance_of(x, class GMP.Integer);
        int i = mpz_get_ui(x);
        self.assert.equal(i, 32);
    }

    function test_string_init() {
        var x = new GMP.Integer("33");
        self.assert.instance_of(x, class GMP.Integer);
        int i = mpz_get_ui(x);
        self.assert.equal(i, 33);
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Init);
}
