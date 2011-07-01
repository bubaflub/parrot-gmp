#include <gmp.h>
#include <stdio.h>

int main() {
  printf("%i %i %i\n", __GNU_MP_VERSION, __GNU_MP_VERSION_MINOR, __GNU_MP_VERSION_PATCHLEVEL);
  printf("%zu %zu\n", sizeof(mp_size_t), sizeof(mp_exp_t));
  printf("%zu\n", sizeof(size_t));
  printf("%zu\n", sizeof(mp_limb_t));
  return 0;
}
