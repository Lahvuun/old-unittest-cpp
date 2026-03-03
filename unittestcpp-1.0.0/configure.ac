#
# Copyright (C) 2004-2006 Mekensleep
#
# Mekensleep
# 24 rue vieille du temple
# 75004 Paris
#       licensing@mekensleep.com
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
#
# Authors:
#  Johan Euphrosine <johan@mekensleep.com>
#
# 

# Process this file with autoconf to produce a configure script.

AC_PREREQ(2.54)
AC_INIT(unittestcpp, 1.0.0)
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

# Check is STLport is needed
AC_CHECK_NATIVE_STL
if test "$native_stl" != "yes"
then
	AM_PATH_STLPORT
fi

#
# G++ specific debug and optimization flags
#
AC_ARG_ENABLE(debug,
    [  --enable-debug          build in debug mode (the default is to build in optimized mode)],
    [enable_debug=yes])

if test "$GXX" = "yes" -a "$ac_test_CXXFLAGS" != set ; then
  if test "$enable_debug" = "yes" ; then
    CXXFLAGS="-pipe -g -Wall -Wpointer-arith"
  else
    CXXFLAGS="-pipe -O3 -Wall -Wpointer-arith"
  fi
fi

CPPFLAGS="$CPPFLAGS "' -I${top_srcdir}/include/unittestcpp -I${top_srcdir}/include/unittestcpp/Linux -DUSE_UNITTESTCPP -DLINUX'

AC_CONFIG_FILES([Makefile
	         src/Makefile
	         src/unittestcpp/Makefile
	         test/Makefile
	         include/Makefile
	         include/unittestcpp/Makefile
		 libunittestcpp.pc
	 ])
AC_OUTPUT
