.sub '' :anon :load
  .local pmc lib, nci
  loadlib lib, 'gmplib.so'
  dlfunc nci, lib, '__gmpz_setbit', 'vpl'
  set_global ['GMP';'Raw'], '__gmpz_setbit', nci
  dlfunc nci, lib, '__gmpz_sqrt', 'vpp'
  set_global ['GMP';'Raw'], '__gmpz_sqrt', nci
  dlfunc nci, lib, '__gmpz_fdiv_qr_ui', 'lpppl'
  set_global ['GMP';'Raw'], '__gmpz_fdiv_qr_ui', nci
  dlfunc nci, lib, '__gmpz_fits_uint_p', 'ip'
  set_global ['GMP';'Raw'], '__gmpz_fits_uint_p', nci
  dlfunc nci, lib, '__gmpz_fits_ulong_p', 'ip'
  set_global ['GMP';'Raw'], '__gmpz_fits_ulong_p', nci
  dlfunc nci, lib, '__gmpz_urandomb', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_urandomb', nci
  dlfunc nci, lib, '__gmpz_fdiv_q_ui', 'lppl'
  set_global ['GMP';'Raw'], '__gmpz_fdiv_q_ui', nci
  dlfunc nci, lib, '__gmpz_addmul', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_addmul', nci
  dlfunc nci, lib, '__gmp_randseed', 'vpp'
  set_global ['GMP';'Raw'], '__gmp_randseed', nci
  dlfunc nci, lib, '__gmpz_fac_ui', 'vpl'
  set_global ['GMP';'Raw'], '__gmpz_fac_ui', nci
  dlfunc nci, lib, '__gmpz_tdiv_qr_ui', 'lpppl'
  set_global ['GMP';'Raw'], '__gmpz_tdiv_qr_ui', nci
  dlfunc nci, lib, '__gmpz_hamdist', 'lpp'
  set_global ['GMP';'Raw'], '__gmpz_hamdist', nci
  dlfunc nci, lib, '__gmpz_get_d', 'dp'
  set_global ['GMP';'Raw'], '__gmpz_get_d', nci
  dlfunc nci, lib, '__gmpz_powm_ui', 'vpplp'
  set_global ['GMP';'Raw'], '__gmpz_powm_ui', nci
  dlfunc nci, lib, '__gmpz_set_si', 'vpl'
  set_global ['GMP';'Raw'], '__gmpz_set_si', nci
  dlfunc nci, lib, '__gmpz_tdiv_r_2exp', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_tdiv_r_2exp', nci
  dlfunc nci, lib, '__gmpz_urandomm', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_urandomm', nci
  dlfunc nci, lib, '__gmpz_init', 'vp'
  set_global ['GMP';'Raw'], '__gmpz_init', nci
  dlfunc nci, lib, '__gmpz_perfect_square_p', 'ip'
  set_global ['GMP';'Raw'], '__gmpz_perfect_square_p', nci
  dlfunc nci, lib, '__gmpz_mod', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_mod', nci
  dlfunc nci, lib, '__gmpz_get_d_2exp', 'dpp'
  set_global ['GMP';'Raw'], '__gmpz_get_d_2exp', nci
  dlfunc nci, lib, '__gmpz_sub', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_sub', nci
  dlfunc nci, lib, '__gmpz_set_str', 'ippi'
  set_global ['GMP';'Raw'], '__gmpz_set_str', nci
  dlfunc nci, lib, '__gmpz_cmp_d', 'ipd'
  set_global ['GMP';'Raw'], '__gmpz_cmp_d', nci
  dlfunc nci, lib, '__gmp_urandomm_ui', 'lpl'
  set_global ['GMP';'Raw'], '__gmp_urandomm_ui', nci
  dlfunc nci, lib, '__gmpz_add_ui', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_add_ui', nci
  dlfunc nci, lib, '__gmpz_tdiv_ui', 'lpl'
  set_global ['GMP';'Raw'], '__gmpz_tdiv_ui', nci
  dlfunc nci, lib, '__gmpz_add', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_add', nci
  dlfunc nci, lib, '__gmpz_sqrtrem', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_sqrtrem', nci
  dlfunc nci, lib, '__gmpz_fits_slong_p', 'ip'
  set_global ['GMP';'Raw'], '__gmpz_fits_slong_p', nci
  dlfunc nci, lib, '__gmpz_init_set_str', 'ippi'
  set_global ['GMP';'Raw'], '__gmpz_init_set_str', nci
  dlfunc nci, lib, '__gmpz_cdiv_qr', 'vpppp'
  set_global ['GMP';'Raw'], '__gmpz_cdiv_qr', nci
  dlfunc nci, lib, '__gmpz_lucnum2_ui', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_lucnum2_ui', nci
  dlfunc nci, lib, '__gmpz_kronecker_si', 'ipl'
  set_global ['GMP';'Raw'], '__gmpz_kronecker_si', nci
  dlfunc nci, lib, '__gmpz_divisible_p', 'ipp'
  set_global ['GMP';'Raw'], '__gmpz_divisible_p', nci
  dlfunc nci, lib, '__gmpz_rrandomb', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_rrandomb', nci
  dlfunc nci, lib, '__gmpz_powm_sec', 'vpppp'
  set_global ['GMP';'Raw'], '__gmpz_powm_sec', nci
  dlfunc nci, lib, '__gmpz_gcd_ui', 'lppl'
  set_global ['GMP';'Raw'], '__gmpz_gcd_ui', nci
  dlfunc nci, lib, '__gmpz_realloc2', 'vpl'
  set_global ['GMP';'Raw'], '__gmpz_realloc2', nci
  dlfunc nci, lib, '__gmpz_get_ui', 'lp'
  set_global ['GMP';'Raw'], '__gmpz_get_ui', nci
  dlfunc nci, lib, '__gmpz_root', 'ippl'
  set_global ['GMP';'Raw'], '__gmpz_root', nci
  dlfunc nci, lib, '__gmpz_getlimbn', 'ipi'
  set_global ['GMP';'Raw'], '__gmpz_getlimbn', nci
  dlfunc nci, lib, '__gmpz_tdiv_r_ui', 'lppl'
  set_global ['GMP';'Raw'], '__gmpz_tdiv_r_ui', nci
  dlfunc nci, lib, '__gmpz_jacobi', 'ipp'
  set_global ['GMP';'Raw'], '__gmpz_jacobi', nci
  dlfunc nci, lib, '__gmpz_dump', 'vp'
  set_global ['GMP';'Raw'], '__gmpz_dump', nci
  dlfunc nci, lib, '__gmpz_mul_ui', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_mul_ui', nci
  dlfunc nci, lib, '__gmpz_popcount', 'lp'
  set_global ['GMP';'Raw'], '__gmpz_popcount', nci
  dlfunc nci, lib, '__gmpz_fdiv_r_ui', 'lppl'
  set_global ['GMP';'Raw'], '__gmpz_fdiv_r_ui', nci
  dlfunc nci, lib, '__gmpz_fits_sshort_p', 'ip'
  set_global ['GMP';'Raw'], '__gmpz_fits_sshort_p', nci
  dlfunc nci, lib, '__gmpz_cmpabs_ui', 'ipl'
  set_global ['GMP';'Raw'], '__gmpz_cmpabs_ui', nci
  dlfunc nci, lib, '__gmpz_neg', 'vpp'
  set_global ['GMP';'Raw'], '__gmpz_neg', nci
  dlfunc nci, lib, '__gmpz_fits_ushort_p', 'ip'
  set_global ['GMP';'Raw'], '__gmpz_fits_ushort_p', nci
  dlfunc nci, lib, '__gmpz_combit', 'vpl'
  set_global ['GMP';'Raw'], '__gmpz_combit', nci
  dlfunc nci, lib, '__gmpz_random', 'vpi'
  set_global ['GMP';'Raw'], '__gmpz_random', nci
  dlfunc nci, lib, '__gmpz_get_si', 'lp'
  set_global ['GMP';'Raw'], '__gmpz_get_si', nci
  dlfunc nci, lib, '__gmpz_scan1', 'lpl'
  set_global ['GMP';'Raw'], '__gmpz_scan1', nci
  dlfunc nci, lib, '__gmpz_bin_ui', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_bin_ui', nci
  dlfunc nci, lib, '__gmpz_perfect_power_p', 'ip'
  set_global ['GMP';'Raw'], '__gmpz_perfect_power_p', nci
  dlfunc nci, lib, '__gmpz_set', 'vpp'
  set_global ['GMP';'Raw'], '__gmpz_set', nci
  dlfunc nci, lib, '__gmpz_init2', 'vpl'
  set_global ['GMP';'Raw'], '__gmpz_init2', nci
  dlfunc nci, lib, '__gmpz_cmp_si', 'ipl'
  set_global ['GMP';'Raw'], '__gmpz_cmp_si', nci
  dlfunc nci, lib, '__gmpz_and', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_and', nci
  dlfunc nci, lib, '__gmpz_fdiv_q', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_fdiv_q', nci
  dlfunc nci, lib, '__gmpz_tdiv_q_2exp', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_tdiv_q_2exp', nci
  dlfunc nci, lib, '__gmpz_size', 'ip'
  set_global ['GMP';'Raw'], '__gmpz_size', nci
  dlfunc nci, lib, '__gmpz_cdiv_r_2exp', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_cdiv_r_2exp', nci
  dlfunc nci, lib, '__gmpz_powm', 'vpppp'
  set_global ['GMP';'Raw'], '__gmpz_powm', nci
  dlfunc nci, lib, '__gmp_randinit_set', 'vpp'
  set_global ['GMP';'Raw'], '__gmp_randinit_set', nci
  dlfunc nci, lib, '__gmpz_cdiv_r_ui', 'lppl'
  set_global ['GMP';'Raw'], '__gmpz_cdiv_r_ui', nci
  dlfunc nci, lib, '__gmpz_set_ui', 'vpl'
  set_global ['GMP';'Raw'], '__gmpz_set_ui', nci
  dlfunc nci, lib, '__gmpz_cmpabs_d', 'ipd'
  set_global ['GMP';'Raw'], '__gmpz_cmpabs_d', nci
  dlfunc nci, lib, '__gmpz_submul', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_submul', nci
  dlfunc nci, lib, '__gmpz_remove', 'lppp'
  set_global ['GMP';'Raw'], '__gmpz_remove', nci
  dlfunc nci, lib, '__gmpz_si_kronecker', 'ilp'
  set_global ['GMP';'Raw'], '__gmpz_si_kronecker', nci
  dlfunc nci, lib, '__gmpz_fits_sint_p', 'ip'
  set_global ['GMP';'Raw'], '__gmpz_fits_sint_p', nci
  dlfunc nci, lib, '__gmpz_init_set_d', 'vpd'
  set_global ['GMP';'Raw'], '__gmpz_init_set_d', nci
  dlfunc nci, lib, '__gmpz_fdiv_qr', 'vpppp'
  set_global ['GMP';'Raw'], '__gmpz_fdiv_qr', nci
  dlfunc nci, lib, '__gmpz_ui_sub', 'vplp'
  set_global ['GMP';'Raw'], '__gmpz_ui_sub', nci
  dlfunc nci, lib, '__gmpz_bin_uiui', 'vpll'
  set_global ['GMP';'Raw'], '__gmpz_bin_uiui', nci
  dlfunc nci, lib, '__gmpz_tdiv_q', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_tdiv_q', nci
  dlfunc nci, lib, '__gmpz_cdiv_r', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_cdiv_r', nci
  dlfunc nci, lib, '__gmpz_fdiv_r_2exp', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_fdiv_r_2exp', nci
  dlfunc nci, lib, '__gmpz_kronecker_ui', 'ipl'
  set_global ['GMP';'Raw'], '__gmpz_kronecker_ui', nci
  dlfunc nci, lib, '__gmpz_divexact', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_divexact', nci
  dlfunc nci, lib, '__gmp_randinit_lc_2exp_size', 'ipl'
  set_global ['GMP';'Raw'], '__gmp_randinit_lc_2exp_size', nci
  dlfunc nci, lib, '__gmpz_clear', 'vp'
  set_global ['GMP';'Raw'], '__gmpz_clear', nci
  dlfunc nci, lib, '__gmpz_fib2_ui', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_fib2_ui', nci
  dlfunc nci, lib, '__gmpz_random2', 'vpi'
  set_global ['GMP';'Raw'], '__gmpz_random2', nci
  dlfunc nci, lib, '__gmpz_congruent_ui_p', 'ipll'
  set_global ['GMP';'Raw'], '__gmpz_congruent_ui_p', nci
  dlfunc nci, lib, '__gmpz_clrbit', 'vpl'
  set_global ['GMP';'Raw'], '__gmpz_clrbit', nci
  dlfunc nci, lib, '__gmp_randinit_lc_2exp', 'vppll'
  set_global ['GMP';'Raw'], '__gmp_randinit_lc_2exp', nci
  dlfunc nci, lib, '__gmpz_fdiv_r', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_fdiv_r', nci
  dlfunc nci, lib, '__gmpz_gcd', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_gcd', nci
  dlfunc nci, lib, '__gmpz_ior', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_ior', nci
  dlfunc nci, lib, '__gmpz_divisible_ui_p', 'ipl'
  set_global ['GMP';'Raw'], '__gmpz_divisible_ui_p', nci
  dlfunc nci, lib, '__gmpz_get_str', 'ppip'
  set_global ['GMP';'Raw'], '__gmpz_get_str', nci
  dlfunc nci, lib, '__gmpz_swap', 'vpp'
  set_global ['GMP';'Raw'], '__gmpz_swap', nci
  dlfunc nci, lib, '__gmpz_init_set_si', 'vpl'
  set_global ['GMP';'Raw'], '__gmpz_init_set_si', nci
  dlfunc nci, lib, '__gmpz_cmp_ui', 'ipl'
  set_global ['GMP';'Raw'], '__gmpz_cmp_ui', nci
  dlfunc nci, lib, '__gmpz_sub_ui', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_sub_ui', nci
  dlfunc nci, lib, '__gmpz_init_set', 'vpp'
  set_global ['GMP';'Raw'], '__gmpz_init_set', nci
  dlfunc nci, lib, '__gmpz_cmp', 'ipp'
  set_global ['GMP';'Raw'], '__gmpz_cmp', nci
  dlfunc nci, lib, '__gmpz_cdiv_q', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_cdiv_q', nci
  dlfunc nci, lib, '__gmpz_abs', 'vpp'
  set_global ['GMP';'Raw'], '__gmpz_abs', nci
  dlfunc nci, lib, '__gmpz_lcm_ui', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_lcm_ui', nci
  dlfunc nci, lib, '__gmpz_mul_2exp', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_mul_2exp', nci
  dlfunc nci, lib, '__gmpz_submul_ui', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_submul_ui', nci
  dlfunc nci, lib, '__gmp_randseed_ui', 'vpl'
  set_global ['GMP';'Raw'], '__gmp_randseed_ui', nci
  dlfunc nci, lib, '__gmpz_com', 'vpp'
  set_global ['GMP';'Raw'], '__gmpz_com', nci
  dlfunc nci, lib, '__gmpz_fdiv_ui', 'lpl'
  set_global ['GMP';'Raw'], '__gmpz_fdiv_ui', nci
  dlfunc nci, lib, '__gmpz_tdiv_q_ui', 'lppl'
  set_global ['GMP';'Raw'], '__gmpz_tdiv_q_ui', nci
  dlfunc nci, lib, '__gmpz_ui_kronecker', 'ilp'
  set_global ['GMP';'Raw'], '__gmpz_ui_kronecker', nci
  dlfunc nci, lib, '__gmpz_tstbit', 'ipl'
  set_global ['GMP';'Raw'], '__gmpz_tstbit', nci
  dlfunc nci, lib, '__gmpz_probab_prime_p', 'ipi'
  set_global ['GMP';'Raw'], '__gmpz_probab_prime_p', nci
  dlfunc nci, lib, '__gmpz_scan0', 'lpl'
  set_global ['GMP';'Raw'], '__gmpz_scan0', nci
  dlfunc nci, lib, '__gmpz_tdiv_qr', 'vpppp'
  set_global ['GMP';'Raw'], '__gmpz_tdiv_qr', nci
  dlfunc nci, lib, '__gmpz_mul', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_mul', nci
  dlfunc nci, lib, '__gmpz_xor', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_xor', nci
  dlfunc nci, lib, '__gmpz_cmpabs', 'ipp'
  set_global ['GMP';'Raw'], '__gmpz_cmpabs', nci
  dlfunc nci, lib, '__gmp_randclear', 'vp'
  set_global ['GMP';'Raw'], '__gmp_randclear', nci
  dlfunc nci, lib, '__gmpz_set_d', 'vpd'
  set_global ['GMP';'Raw'], '__gmpz_set_d', nci
  dlfunc nci, lib, '__gmpz_lucnum_ui', 'vpl'
  set_global ['GMP';'Raw'], '__gmpz_lucnum_ui', nci
  dlfunc nci, lib, '__gmpz_congruent_p', 'ippp'
  set_global ['GMP';'Raw'], '__gmpz_congruent_p', nci
  dlfunc nci, lib, '__gmpz_invert', 'ippp'
  set_global ['GMP';'Raw'], '__gmpz_invert', nci
  dlfunc nci, lib, '__gmpz_lcm', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_lcm', nci
  dlfunc nci, lib, '__gmpz_cdiv_q_2exp', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_cdiv_q_2exp', nci
  dlfunc nci, lib, '__gmpz_millerrabin', 'ipi'
  set_global ['GMP';'Raw'], '__gmpz_millerrabin', nci
  dlfunc nci, lib, '__gmp_randinit_mt', 'vp'
  set_global ['GMP';'Raw'], '__gmp_randinit_mt', nci
  dlfunc nci, lib, '__gmpz_fib_ui', 'vpl'
  set_global ['GMP';'Raw'], '__gmpz_fib_ui', nci
  dlfunc nci, lib, '__gmpz_divexact_ui', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_divexact_ui', nci
  dlfunc nci, lib, '__gmpz_cdiv_ui', 'lpl'
  set_global ['GMP';'Raw'], '__gmpz_cdiv_ui', nci
  dlfunc nci, lib, '__gmpz_ui_pow_ui', 'vpll'
  set_global ['GMP';'Raw'], '__gmpz_ui_pow_ui', nci
  dlfunc nci, lib, '__gmpz_rootrem', 'vpppl'
  set_global ['GMP';'Raw'], '__gmpz_rootrem', nci
  dlfunc nci, lib, '__gmp_randinit_default', 'vp'
  set_global ['GMP';'Raw'], '__gmp_randinit_default', nci
  dlfunc nci, lib, '__gmpz_congruent_2exp_p', 'ippl'
  set_global ['GMP';'Raw'], '__gmpz_congruent_2exp_p', nci
  dlfunc nci, lib, '__gmpz_divisible_2exp_p', 'ipl'
  set_global ['GMP';'Raw'], '__gmpz_divisible_2exp_p', nci
  dlfunc nci, lib, '__gmpz_gcdext', 'vppppp'
  set_global ['GMP';'Raw'], '__gmpz_gcdext', nci
  dlfunc nci, lib, '__gmpz_addmul_ui', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_addmul_ui', nci
  dlfunc nci, lib, '__gmpz_sizeinbase', 'ipi'
  set_global ['GMP';'Raw'], '__gmpz_sizeinbase', nci
  dlfunc nci, lib, '__gmpz_fdiv_q_2exp', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_fdiv_q_2exp', nci
  dlfunc nci, lib, '__gmpz_cdiv_qr_ui', 'lpppl'
  set_global ['GMP';'Raw'], '__gmpz_cdiv_qr_ui', nci
  dlfunc nci, lib, '__gmpz_init_set_ui', 'vpl'
  set_global ['GMP';'Raw'], '__gmpz_init_set_ui', nci
  dlfunc nci, lib, '__gmpz_tdiv_r', 'vppp'
  set_global ['GMP';'Raw'], '__gmpz_tdiv_r', nci
  dlfunc nci, lib, '__gmpz_cdiv_q_ui', 'lppl'
  set_global ['GMP';'Raw'], '__gmpz_cdiv_q_ui', nci
  dlfunc nci, lib, '__gmpz_nextprime', 'vpp'
  set_global ['GMP';'Raw'], '__gmpz_nextprime', nci
  dlfunc nci, lib, '__gmp_urandomb_ui', 'lpl'
  set_global ['GMP';'Raw'], '__gmp_urandomb_ui', nci
  dlfunc nci, lib, '__gmpz_pow_ui', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_pow_ui', nci
  dlfunc nci, lib, '__gmpz_mul_si', 'vppl'
  set_global ['GMP';'Raw'], '__gmpz_mul_si', nci
.end
