# $Header: $

EAPI=4
inherit subversion
inherit autotools

DESCRIPTION="A dynamic compilation framework for PTX"
HOMEPAGE="http://code.google.com/p/gpuocelot"
SRC_URI=""
ESVN_REPO_URI="http://gpuocelot.googlecode.com/svn/trunk/ocelot/"
KEYWORDS=""

LICENSE="BSD"
SLOT="0"

DEPEND=">=dev-libs/boost-1.45.0
	dev-util/nvidia-cuda-toolkit
	media-libs/glew"
RDEPEND="${DEPEND}"

src_unpack() {
	subversion_src_unpack
	cd "${S}"
	elibtoolize
	eautoreconf
}

src_configure() {
	append-cflags -Wno-error
	append-cxxflags -Wno-error
	econf
}

src_install() {
	emake DESTDIR="${D}" install
}
