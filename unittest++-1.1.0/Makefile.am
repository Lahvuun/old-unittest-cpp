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

EXTRA_DIST = \
	unittest++.pc.in \
	unittest++.m4 \
	config/ccache.m4 \
	TestUnitTest++.vsnet2003.vcproj \
	TestUnitTest++.vsnet2005.vcproj \
	UnitTest++.vsnet2003.sln \
	UnitTest++.vsnet2005.sln \
	UnitTest++.vsnet2003.vcproj \
	UnitTest++.vsnet2005.vcproj

MAINTAINERCLEANFILES = \
	INSTALL \
	Makefile.in \
	aclocal.m4 \
	config.guess \
	config.h.in \
	config.sub \
	configure \
	depcomp \
	install-sh \
	ltmain.sh \
	missing \
	mkinstalldirs

DISTCLEANFILES = \
	config.log \
	config.status


pkgconfigdir = ${libdir}/pkgconfig
pkgconfig_DATA = unittest++.pc

aclocaldir = ${datadir}/aclocal
dist_aclocal_DATA = unittest++.m4

ACLOCAL_AMFLAGS = -I config

lib_LTLIBRARIES = libunittest++.la

libunittest___la_SOURCES = \
src/Test.cpp \
src/AssertException.cpp \
src/TestRunner.cpp \
src/MemoryOutStream.cpp \
src/TimeConstraint.cpp \
src/TestReporter.cpp \
src/TestReporterStdout.cpp \
src/TestResults.cpp \
src/Checks.cpp \
src/TestList.cpp \
src/ReportAssert.cpp \
src/Posix/TimeHelpers.cpp \
src/Posix/SignalTranslator.cpp

libunittest___la_LDFLAGS = -version-info 0:0:0

unittest__includedir = $(includedir)/unittest++
unittest__include_HEADERS = \
src/Checks.h \
src/AssertException.h \
src/TestMacros.h \
src/Config.h \
src/TestResults.h \
src/TestReporterStdout.h \
src/Test.h \
src/MemoryOutStream.h \
src/TestRunner.h \
src/ReportAssert.h \
src/UnitTest++.h \
src/TestList.h \
src/TimeHelpers.h \
src/TestReporter.h \
src/CheckMacros.h \
src/TimeConstraint.h \
src/Posix/TimeHelpers.h \
src/Posix/SignalTranslator.h

EXTRA_DIST += \
src/Win32/TimeHelpers.cpp \
src/Win32/TimeHelpers.h

TESTS = ./testunittest++

check_PROGRAMS = testunittest++

testunittest___SOURCES = \
src/tests/Main.cpp \
src/tests/TestChecks.cpp \
src/tests/TestTimeConstraint.cpp \
src/tests/RecordingReporter.h \
src/tests/TestTestResults.cpp \
src/tests/TestTest.cpp \
src/tests/TestTestRunner.cpp \
src/tests/TestUnitTestCpp.cpp \
src/tests/TestTestMacros.cpp \
src/tests/TestAssertHandler.cpp \
src/tests/TestTestList.cpp \
src/tests/TestMemoryOutStream.cpp \
src/tests/TestCheckMacros.cpp

testunittest___LDADD = \
	$(top_builddir)/libunittest++.la
