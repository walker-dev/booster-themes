AC_INIT(
    [booster-themes],
    [https://github.com/boosterdev/booster-themes],
    []
)

AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([m4])
AM_INIT_AUTOMAKE([no-dist-gzip dist-xz foreign])
AC_PROG_MKDIR_P

BOOSTER_ENABLE([NVIDIA],        [nvidia],        [Booster Nvidia],    [disable])
BOOSTER_ENABLE([HOTROD],        [hotrod],        [Booster Hotrod],    [disable])

AS_IF([test "x$ENABLE_GNOME_SHELL$ENABLE_GTK3" != xnono], [BOOSTER_GNOME])

AC_CONFIG_FILES([
    common/Makefile
    Makefile
])

AC_OUTPUT
