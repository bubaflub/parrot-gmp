.sub '' :anon :load
  .local pmc lib, nci
  loadlib lib, 'gmplib.so'
  dlfunc nci, lib, '__gmpz_init', 'vp'
  set_global ['gmp'], '__gmpz_init', nci
.end
