# AM_USE_UNITTESTCPP

AC_DEFUN([AM_USE_UNITTESTCPP],
[
have_unittestcpp="no"
PKG_CHECK_MODULES(UNITTESTCPP, unittest++ >= 0.1, [have_unittestcpp="yes"] ,)

if test "$have_unittestcpp" = "yes" ; then
  CPPFLAGS="$CPPFLAGS $UNITTESTCPP_CFLAGS" 
  LIBS="$LIBS $UNITTESTCPP_LIBS"
  AC_DEFINE(USE_UNITTESTCPP, 1, [activate unittest++])
fi

])
