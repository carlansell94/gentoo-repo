# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit meson xdg

DESCRIPTION="Watch without distraction."
HOMEPAGE="https://gitlab.gnome.org/GNOME/showtime"
SRC_URI="https://gitlab.gnome.org/GNOME/showtime/-/archive/${PV}/${P}.tar.bz2"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
BDEPEND="
	>=dev-build/meson-0.62.0
	>=dev-build/ninja-1.11.1-r2
"

RDEPEND="
	>=gui-libs/gtk-4.15.0
	>=media-libs/gstreamer-1.24.0
	>=media-libs/gst-plugins-base-1.24.0
	>=media-plugins/gst-plugin-gtk4-0.13
	>=gui-libs/libadwaita-1.6.0
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
