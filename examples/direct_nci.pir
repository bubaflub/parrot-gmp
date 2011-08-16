.namespace [ "GMPz" ]
.sub 'init' :vtable :method
    .local pmc i
    .local pmc gmp
    .local pmc mpz_init
    .include "datatypes.pasm"
    gmp = loadlib 'libgmp'
    $I0 = defined gmp
    if $I0, gmp_loaded
    die "No GMP\n"
  gmp_loaded:
    mpz_init = dlfunc gmp, '__gmpz_init', 'vp'
    $I0 = defined mpz_init
    if $I0, mpz_init_function
    die "No mpz_init function"
  mpz_init_function:
    $P1 = new ['FixedIntegerArray'], 5
    $P1[0] = .DATATYPE_STRUCT
    $P1[1] = 3
    $P1[2] = .DATATYPE_INT
    $P1[3] = .DATATYPE_PTR
    $P1[4] = .DATATYPE_INT
    $P0 = new ['StructView'], $P1
    i = $P0.'alloc'()
    mpz_init(i)
    setattribute self, 'opaque', i
.end

.sub mpz_set_ui :method
    .param int x
    .local pmc gmp
    .local pmc mpz_set_ui
    .local pmc i
    i = getattribute self, "opaque"
    .include "datatypes.pasm"
    # check params are legit or face the segfault!
    gmp = loadlib 'libgmp'
    $I0 = defined gmp
    if $I0, gmp_loaded
    die "No GMP\n"
  gmp_loaded:
    mpz_set_ui = dlfunc gmp, '__gmpz_set_ui', 'vpi'
    $I0 = defined mpz_set_ui
    if $I0, mpz_set_ui_function
    die "No mpz_set_ui function"
  mpz_set_ui_function:
    mpz_set_ui(i, x)
.end

.sub mpz_get_ui :method
    .local pmc gmp
    .local pmc mpz_get_ui
    .local pmc i
    i = getattribute self, "opaque"
    .include "datatypes.pasm"
    # check params are legit or face the segfault!
    gmp = loadlib 'libgmp'
    $I0 = defined gmp
    if $I0, gmp_loaded
    die "No GMP\n"
  gmp_loaded:
    mpz_get_ui = dlfunc gmp, '__gmpz_get_ui', 'ip'
    $I0 = defined mpz_get_ui
    if $I0, mpz_get_ui_function
    die "No mpz_get_ui function"
  mpz_get_ui_function:
    $I0 = mpz_get_ui(i)
    .return($I0)
.end

.namespace[]

.sub main :main
    .local pmc gmpz_class
    newclass gmpz_class, "GMPz"
    addattribute gmpz_class, "opaque"
    new $P1, gmpz_class
    $P1.'mpz_set_ui'(42)
    $I0 = $P1.'mpz_get_ui'()
    say $I0
.end
