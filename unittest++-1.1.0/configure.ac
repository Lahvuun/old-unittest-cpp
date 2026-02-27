# 
# Copyright (c) 2006 Noel Llopis and Charles Nicholson
# 
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
# 
# The above copyright notice and this permission notice shall be included
# in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
# 
# Authors:
#  Johan Euphrosine <johan@mekensleep.com>
# 

# 
# Process this file with autoconf to produce a configure script.
# 
AC_PREREQ(2.54)
AC_INIT(unittest++, 1.1.0, johan@mekensleep.com, unittest++)
AC_CANONICAL_TARGET
AM_INIT_AUTOMAKE()
AM_CONFIG_HEADER([config.h])

# Checks for programs.
AC_PROG_MAKE_SET
AC_GNU_SOURCE
AC_LANG(C++)
AC_PROG_CPP
AC_PROG_CXX
AM_PATH_CCACHE
AC_PROG_LIBTOOL


AC_EXEEXT
AC_OBJEXT

AC_ISC_POSIX
AC_HEADER_STDC
AC_C_INLINE

#
# G++ specific debug and optimization flags
#
AC_ARG_ENABLE(debug,
    [  --enable-debug          build in debug mode (the default is to build in optimized mode)],
    [enable_debug=yes])

if test "$GXX" = "yes" -a "$ac_test_CXXFLAGS" != set ; then
  if test "$enable_debug" = "yes" ; then
    CXXFLAGS="-pipe -g -Wall -Wpointer-arith -ansi -pedantic"
  else
    CXXFLAGS="-pipe -O3 -Wall -Wpointer-arith -ansi -pedantic"
  fi
fi

CPPFLAGS="$CPPFLAGS "' -I${top_srcdir}/src -I${top_srcdir}/src/Posix'

AC_CONFIG_FILES([Makefile
		 unittest++.pc
	 ])
AC_OUTPUT
