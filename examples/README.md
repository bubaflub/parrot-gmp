Examples
========

This directory contains simple examples that illustrate how to use Parrot-GMP.

direct\_nci.pir
---------------

This file shows how to use the GMP library without Parrot-GMP by using Parrot's NCI subsystem directly.  We first have to load the library with `loadlib` and then load a specific function with `dlfunc`.  There is also a StructView defined so we can properly allocate the correct amount of memory for the GMP Integer type.  Finally, there is no type checking done and if you invoke a function incorrectly - that is, with the wrong parameters or types - you will most likely segfault.


basic.winxed
------------

This file shows how to use the Parrot-GMP library from Winxed.  First, we must load GMP/Integer.pbc which contains all of our function definitions and everything necessary for actually using GMP Integer functions.  The namespace is declared again at the top of the file to quite a Winxed warning about not finding the class at compile time; if we run basic.winxed without that Winxed will let us know that we are using a class that wasn't found when compiling basic.winxed which is true but not actully a problem since GMP/Integer.pbc does in fact exist.  This example shows some benefits of using Parrot-GMP:

* We don't have any `loadlib` or `dlfunc` calls cluttering our code.
* We get nice function names (e.g. mpz\_set\_ui instead of \_\_gmpz\_set\_ui)
* We get intelligent stringification (lines 11, 15, 20)
* We get a simple initializer that handles no arguments, integers, or strings (lines 8, 13, 17)
* We get to use normal arithmetic operations (technically called VTABLE overrides, line 18)

Test Suite
----------

Every function available in Parrot-GMP has at least two different test runs that exercise that function.  If you are wondering how to use a certain function, look at the tests under the t/ directory.
