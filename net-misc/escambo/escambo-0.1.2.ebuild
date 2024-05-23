EAPI=8
inherit meson xdg

DESCRIPTION="Escambo is an HTTP-based APIs test application made in GTK4/Libadwaita."
HOMEPAGE="https://github.com/CleoMenezesJr/escambo/"
SRC_URI="https://github.com/CleoMenezesJr/escambo/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="
	>=dev-libs/glib-2.76.3
	>=dev-util/blueprint-compiler-0.8.1
	>=dev-util/gtk-update-icon-cache-3.24.31
	>=dev-build/meson-1.1.1
	>=dev-build/ninja-1.11.1-r2
	>=gui-libs/gtk-4.10.4
	>=gui-libs/libadwaita-1.3.2
	>=sys-devel/gettext-0.21.1
"

RDEPEND="
	>=gui-libs/gtksourceview-5.8.0
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
