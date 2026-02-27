# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit eutils

DESCRIPTION="description."
HOMEPAGE="http://sourceforge.net/projects/unittest-cpp/"
MY_P="${PN}-${PV}.tar.gz"
SRC_URI="http://download.gna.org/underware/sources/${MY_P}"
SLOT="0"
LICENSE="MIT"
KEYWORDS="x86"
IUSE=""

DEPEND=""

src_unpack() {
	unpack ${MY_P}
	if ls ${FILESDIR}/${PVR}*.patch 2>/dev/null
		then
		for i in ${FILESDIR}/${PVR}*.patch
		  do
		  epatch $i
		done
	fi
}

src_install () {
	make install DESTDIR=${D} || die "einstall failed"
}
