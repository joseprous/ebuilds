# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils
inherit autotools

DESCRIPTION="ODB is an open-source, cross-platform, and cross-database object-relational mapping (ORM) system for C++"
HOMEPAGE="http://www.codesynthesis.com/products/odb/"
SRC_URI="http://www.codesynthesis.com/download/odb/2.2/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="dev-libs/libcutl
		 dev-libs/libodb"
DEPEND="${RDEPEND}"

src_prepare() {
	eaclocal
	eautomake
}

src_configure() {
	econf
}

src_install() {
	emake DESTDIR="${D}" install

	dodoc NEWS README
}
