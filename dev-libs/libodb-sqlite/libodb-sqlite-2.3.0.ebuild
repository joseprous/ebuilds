# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="SQLite ODB runtime library"
HOMEPAGE="http://www.codesynthesis.com/products/odb/"
SRC_URI="http://www.codesynthesis.com/download/odb/2.3/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="dev-libs/libodb
		 dev-db/sqlite"
DEPEND="${RDEPEND}"

src_configure() {
	econf
}

src_install() {
	emake DESTDIR="${D}" install

	dodoc NEWS README
}
