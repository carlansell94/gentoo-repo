EAPI=8
inherit meson xdg

DESCRIPTION="A GNOME media player built using GTK4."
HOMEPAGE="https://github.com/Rafostar/clapper"
SRC_URI="https://github.com/Rafostar/clapper/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="
	>=dev-libs/glib-2.76.0
	>=dev-build/meson-0.64.0
	>=dev-build/ninja-1.11.1-r2
"

RDEPEND="
	>=gui-libs/gtk-4.10.0
	>=media-libs/gstreamer-1.20.0
	>=media-libs/gst-plugins-base-1.20.0
	>=gui-libs/libadwaita-1.4.0
"

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
	glib-compile-schemas /usr/share/glib-2.0/schemas
}

pkg_postrm() {
	xdg_pkg_postrm
}
