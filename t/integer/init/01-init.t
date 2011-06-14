$load "rosella/test.pbc";
$load "src/GMP/Integer.pbc";

namespace GMP {
  class Integer;
}

class Test_GMP_Init {

    function test_empty_init() {
        try {
            var x = new GMP.Integer();
            self.assert.instance_of(class 'Integer', x);
        } catch(e) {
            self.assert.fail('cannot construct GMP Integer - empty');
        }
    }

    function test_integer_init() {
        try {
            var x = new GMP.Integer(32);
            self.assert.instance_of(class 'Integer', x);
            int i = mpz_get_ui(x);
            self.assert.equal(i, 32);
        } catch(e) {
            self.assert.fail('cannot construct GMP Integer - int');
        }
    }

    function test_string_init() {
        try {
            var x = new GMP.Integer("33");
            self.assert.instance_of(class 'Integer', x);
            int i = mpz_get_ui(x);
            self.assert.equal(i, 33);
        } catch(e) {
            self.assert.fail('cannot construct GMP Integer - string');
        }
    }
}

function main[main]() {
    using Rosella.Test.test;
    test(class Test_GMP_Init);
}
