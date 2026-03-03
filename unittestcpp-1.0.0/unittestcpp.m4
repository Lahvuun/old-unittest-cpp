# AM_USE_UNITTESTCPP

AC_DEFUN([AM_USE_UNITTESTCPP],
[
AC_ARG_ENABLE(unittestcpp,
    [  --enable-unittestcpp          build with profile mode (the default is to build without it)],
    [enable_unittestcpp=yes])


if test "$enable_unittestcpp" = "yes" ; then
  PKG_CHECK_MODULES(UNITTESTCPP, libunittestcpp >= 0.1, , [AC_MSG_ERROR(libunittestcpp is a mandatory library)])
  CPPFLAGS="$CPPFLAGS $UNITTESTCPP_CFLAGS" 
  LIBS="$LIBS $UNITTESTCPP_LIBS"
  AC_DEFINE(USE_UNITTESTCPP, 1, [activate unittestcpp])
else
  CPPFLAGS="$CPPFLAGS $UNITTESTCPP_CFLAGS" 
fi

])
