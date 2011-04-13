Readme
======

Parrot-GMP aims to provide low-level bindings to the GMP library.

Currently test.pir shows a very basic usage of GMP inside Parrot.

How it will eventually work:

A NCI definition file will sit in src/GMP/raw.nci
tools/dev/ncidef2.pl will read this file and generate low-level PIR functions to call the corresponding GMP calls
Distutils will be used to automate this building process and run the tests
Documentation will be on each function
Examples will be plentiful and useful
A wrapper class will be written in Winxed for convenience

Using the PIR functions will allow you to shoot yourself in the foot while segfaulting because that is fast.
