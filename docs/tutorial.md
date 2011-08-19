Bob's NCI Tutorial
==================

Introduction
------------

Welcome to Bob's NCI Tutorial.  This brief document should tell you the what, why, how of NCI on Parrot.  You'll need only basic familiarity with Parrot and the C language.

In brief:

* What - Call existing functions in C libraries
* Why - Use existing software; don't reinvent the wheel!
* How - Use scripts to help build bindings for a C library

Table of Contents
-----------------

1. Introduction
2. Table of Contents (you are here)
3. The Way of the NCI Ninja
4. The Tools of the NCI Ninja
5. Slaying the GMP Beast


The Way of the NCI Ninja
------------------------

NCI stands for native call interface. If you are familiar with Java, it fulfills some of the same purposes as JNI - it allows you to interface with existing C libraries without having to write C code.  Furthermore, the actual implementation details of a function you want to use are not important - you only need to know the function signature (the return type, the function name, and the parameters) and any structs that are used.

TODO: add note about how NCI architecture in Parrot
  calling conventions?
  thunk / libffi


There are some examples under `examples/nci` included with Parrot that you can look at.  Also, there are a number of library bindings that are included with Parrot and probably the best example to look at would be `runtime/parrot/library/libpcre.pir`.  There are also a number of other projects like this one that use NCI but are not distributed with Parrot.  See (plobsing's excellent bindings for ZeroMQ)[https://github.com/plobsing/parrot-zeromq].


The Tools of the NCI Ninja
--------------------------

The two important opcodes that are foundational for NCI are `loadlib` and `dlfunc`. `$P0 = loadlib 'hello'` will attempt to load a shared library named 'hello' into a PMC register.  `$P1 = dlfunc $P0, 'foo', 'vi'` will attempt to load a function named 'foo' that returns void and takes an int from the library in $P0.

TODO: more detailed information about loadlib and dlfunc variants
TODO: more examples of using loadlib and dlfunc

Using just `loadlib` and `dlfunc` you can do any NCI calls that you may need.  And if you only need to call one or two functions you can probably stop here.  But if you want to provide bindings for an entire library than there is absolutetly no reason to craft all of these calls by hand.  Parrot comes with a script called `ncidef2pir.pl` located in the tools/dev directory that reads a specially formatted file, called an NCI definition, and outputs PIR code that will load your library, load each function specified, and put that function into a namespace you chose.

TODO: example NCI definition file
TODO: example invocation and resulting PIR

Since an NCI definition file is simply a highly structred configuration file, for anything beyond the simplest of projects it is best to write a script that will read the header file `gmph2ncidef.pl` in the bin/ directory reads the GMP header file and outputs an appropriate NCI definition.

TODO: talk about what goes in each YAML conf file in the conf/ directory
TODO: talk about how to extend or customize
TODO: give example invocation

TODO: gmpdoc2winxed.pl

Parrot does not automatically handle every possible function signature - only some of the most common are covered. (TODO: discuss *why* this is).  If you try to invoke a funciton that has a signature handled by Parrot you will get a run-time error.  For example, if the signature vppi were not handled by Parrot and you loaded a function with that signature and attempted to invoke it, you would get the error:

    No NCI thunk available for signature `void (ptr, ptr, int)'

There are two ways to solve this problem:

1. Install libffi
2. Generate an NCI thunk

If you install libffi and reconfigure / rebuild Parrot with libffi you will not run into this problem. (TODO: discuss *why*).  This is by far the simplest and fastest solution but causes libffi to be a dependency - if anyone else wants to use your code they too must have libffi installed.

An NCI thunk is a small piece of C code that allows Parrot to properly call a function with a given signature.  The code helps convert between Parrot-specific types and C types and also calls the function within the context of Parrot.  Again, there is no need to write any of this code by hand - Parrot comes with a script `parrot_nci_thunk_gen` that is installed when Parrot is installed.  `parrot_nci_thunk_gen` takes an NCI definition file and outputs the correct C code.  You would then compile this C code into a shared library and load it in your code.

One annoyance with `parrot_nci_thunk_gen` is that the NCI definition file format is *slightly* different than the NCI definition file format that `ncidef2pir.pl` uses.  `ncidef2pir.pl` takes a file that specifies the package (namespace) and library and the functions are defined like:

    return_type function_name function_parameters

for example,

    v __gmpz_add_ui ppi

The NCI definition file format for `parrot_nci_thunk_gen` does not include a package or library name and looks like:

    return_type function_parameters

for example, the previous function would be:

    v   ppi

This is not really a big deal and can easily be solved with a simple AWK one-liner.  A larger problem is that we don't know which function signatures are already covered in the Parrot core and which need to have thunks generated for them.  To solve both of these problems I wrote a small script called `ncithunker.pl` that lives in the bin/ directory - it reads an existing NCI definition file (the kind that is used by `ncidef2pir.pl`) and reads two source files in Parrot (src/nci/core\_thunks.nci and src/nci/extra\_thunks.nci) and then outputs an NCI definition file (the kind used by `parrot_nci_thunk_gen`) of any signature not covered by the core.

For example, in the Parrot-GMP project we have our existing NCI definition file (for `ncidef2pir.pl`) living in src/GMP/raw.nci.  On my machine the Parrot root directory is /Users/bob/work/parrot/.  Running `perl bin/ncithunker.pl /Users/bob/work/parrot src/GMP/raw.nci > src/GMP/thunks.nci` gives me the following in thunks.nci:

    v	pppl
    d	p
    v	ppll
    l	pl
    v	ppl
    p	pip
    v	pd
    l	pp
    d	pp
    v	pppp
    v	plp
    v	ppppp
    l	ppp
    v	pplp
    v	pll
    i	pd

We can then call `parrot_nci_thunk_gen` to generate C code that will get compiled into a shared library and loaded with the rest of the Parrot-GMP library.


Slaying the GMP Beast
---------------------

TODO: how to build step by step (install.sh)
TODO: specific gotchas
  #defines
  structs
  String nonsense
TODO: how to compile the thunks
TODO: Rosella, distutils
