# AM_USE_UNITTESTCPP

AC_DEFUN([AM_USE_UNITTESTCPP],
[
AC_ARG_ENABLE(unittestcpp,
    [  --enable-unittestcpp	  build with unittest (the default is to build without it)],
    [enable_unittestcpp=yes])


if test "$enable_unittestcpp" = "yes" ; then
  PKG_CHECK_MODULES(UNITTESTCPP, unittest++ >= 0.1, , [AC_MSG_ERROR(unittest++ is a mandatory library)])
  CPPFLAGS="$CPPFLAGS $UNITTESTCPP_CFLAGS" 
  LIBS="$LIBS $UNITTESTCPP_LIBS"
  AC_DEFINE(USE_UNITTESTCPP, 1, [activate unittest++])
fi

])
