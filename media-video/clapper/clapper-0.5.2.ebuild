EAPI=8
inherit meson xdg

DESCRIPTION="A GNOME media player built using GJS with GTK4 toolkit and powered by GStreamer with OpenGL rendering."
HOMEPAGE="https://github.com/Rafostar/clapper"
SRC_URI="https://github.com/Rafostar/clapper/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="
    >=dev-libs/glib-2.76.3
	>=dev-util/meson-1.1.1
	>=dev-util/ninja-1.11.1-r2
"

RDEPEND="
    >=gui-libs/gtk-4.10.4
	>=media-libs/gstreamer-1.20.5
    >=media-libs/gst-plugins-base-1.20.5
    >=dev-libs/gjs-1.76.2
    >=gui-libs/libadwaita-1.3.3
"

PATCHES=(
	"${FILESDIR}/${PV}-appstream-validate.patch"
)

src_configure() {
	meson_src_configure
}

src_compile() {
	meson_src_compile
}

src_install() {
	meson_src_install
}

pkg_postinst() {
	xdg_pkg_postinst
}

pkg_postrm() {
	xdg_pkg_postrm
}
