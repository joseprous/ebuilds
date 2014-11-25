# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="libcutl is a C++ utility library"
HOMEPAGE="http://www.codesynthesis.com/projects/libcutl/"
SRC_URI="http://www.codesynthesis.com/download/libcutl/1.8/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

src_configure() {
	econf
}

src_install() {
	emake DESTDIR="${D}" install

	dodoc NEWS README
}
