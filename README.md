Readme
======

Parrot-GMP aims to provide low-level bindings to the GMP library.  Currently all Integer functions and the associated random number functions are covered.  Eventually there will be full coverage of the library.

Currently examples/basic.winxed shows a very basic usage of GMP inside Parrot.

There is inline function-level documentation (straight from the GMP manual) included, use `perldoc src/GMP/Integer.winxed` to read it.

Using the PIR functions will allow you to shoot yourself in the foot while segfaulting because that is fast. The PIR functions do no type checking and match the internal naming style of GMP ('\_\_gmpz\_add\_ui').  The Winxed convenience class does basic type checking and matches the documentation naming style of the GMP functions ('mpz\_add\_ui').

Building and installing the library will generate bytecode under the GMP/ directory, such as GMP/Integer.pbc.

Dependencies
============

For using the bindings:

The GMP library, at least version 4.2 (and ideally 5.0.x)
Parrot, at least version 3.2.0
libffi (for now)

For developing the bindings themselves:

Winxed (bundled with Parrot version 3.5.0)
NQP (bundled with Parrot)
Rosella (for the test library, available via plumage)

The bare minimum requirements are checked in setup.winxed.

How it works
============

To develop:

1. The script bin/gmph2ncidef.pl reads gmp.h and outputs an NCI definition. Combining that output with src/GMP/Raw.nci.template gives us the NCI definition file at src/GMP/Raw.nci and it is included with the distribution.
2. A script included with parrot in tools/dev/ncidef2pir.pl reads this NCI definition file and generate low-level PIR functions to call the corresponding GMP calls.  This is src/GMP/Raw.pir and included with the distrubtion.
3. The script bin/gmpdoc2winxed.pl reads the GMP documentation (as a single HTML file) and outputs Winxed function calls.  Combining that output with src/GMP/Integer.winxed.template gives us the Winxed file at src/GMP/Integer.winxed and it is included with the distribution.

To build:

1. winxed setup.winxed build

Test:

1. winxed setup.winxed test

Install:

1. winxed setup.winxed install

In the future:

1. Examples will be plentiful and useful
