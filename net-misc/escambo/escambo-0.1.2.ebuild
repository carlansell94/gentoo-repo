EAPI=8
inherit meson
inherit xdg-utils

DESCRIPTION="Escambo is an HTTP-based APIs test application made in GTK4/Libadwaita."
HOMEPAGE="https://github.com/CleoMenezesJr/escambo/"
SRC_URI="https://github.com/CleoMenezesJr/escambo/archive/refs/tags/${PV}.tar.gz -> ${PV}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="
    >=dev-libs/glib-2.76.3
    >=dev-util/blueprint-compiler-0.8.1
    >=dev-util/meson-1.1.1
    >=dev-util/ninja-1.11.1-r2
    >=sys-devel/gettext-0.21.1
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
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_icon_cache_update
}
