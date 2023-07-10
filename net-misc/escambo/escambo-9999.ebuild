EAPI=8
inherit meson xdg git-r3

DESCRIPTION="Escambo is an HTTP-based APIs test application made in GTK4/Libadwaita."
HOMEPAGE="https://github.com/CleoMenezesJr/escambo/"
EGIT_REPO_URI="https://github.com/CleoMenezesJr/escambo.git"
LICENSE="GPL-3"
SLOT="0"

BDEPEND="
	>=dev-libs/glib-2.76.3
	>=dev-util/blueprint-compiler-0.8.1
	>=dev-util/gtk-update-icon-cache-3.24.31
	>=dev-util/meson-1.1.1
	>=dev-util/ninja-1.11.1-r2
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
}

pkg_postrm() {
	xdg_pkg_postrm
}
