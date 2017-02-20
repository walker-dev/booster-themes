AC_INIT(
    [booster-themes],
    [https://github.com/boosterdev/booster-themes],
    []
)

AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([m4])
AM_INIT_AUTOMAKE([no-dist-gzip dist-xz foreign])
AC_PROG_MKDIR_P

BOOSTER_ENABLE([PURPLERAGE],    [purplerage],   [Booster PURPLERAGE],   [disable])
BOOSTER_ENABLE([NVIDIA],        [nvidia],       [Booster NVIDIA],       [disable])
BOOSTER_ENABLE([HOTROD],        [hotrod],       [Booster HOTROD],       [disable])

AC_CONFIG_FILES([
    common/Makefile
    Makefile
])

AC_OUTPUT
