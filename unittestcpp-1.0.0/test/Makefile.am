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
MAINTAINERCLEANFILES = Makefile.in

TESTS = ./test

check_PROGRAMS = test
test_SOURCES = \
Main.cpp \
TestChecks.cpp \
RecordingReporter.h \
TestTestResults.cpp \
TestTest.cpp \
TestTestRunner.cpp \
TestUnitTestCpp.cpp \
Makefile.am \
TestTestMacros.cpp \
TestAssertHandler.cpp \
TestTestList.cpp \
TestCheckMacros.cpp

test_LDADD = \
	$(top_builddir)/src/unittestcpp/libunittestcpp.la
