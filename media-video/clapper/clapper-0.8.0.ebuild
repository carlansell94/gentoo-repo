# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit meson vala xdg

DESCRIPTION="A GNOME media player built using GTK4."
HOMEPAGE="https://github.com/Rafostar/clapper"
SRC_URI="https://github.com/Rafostar/clapper/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

IUSE="discoverer doc +gst-plugin +gtk +introspection +mpris +plugins server +vapi"

BDEPEND="
	>=dev-libs/glib-2.76.0
	>=dev-build/meson-0.64.0
	>=dev-build/ninja-1.11.1-r2
"

RDEPEND="
	>=gui-libs/gtk-4.10.0
	>=media-libs/gstreamer-1.24.0
	>=media-libs/gst-plugins-base-1.24.0
	>=gui-libs/libadwaita-1.4.0
	doc? ( dev-util/gi-docgen )
	server? ( net-libs/libmicrodns )
"

src_configure() {
	vala_setup
	local emesonargs=(
		$(usex discoverer "-Ddiscoverer=enabled" "-Ddiscoverer=disabled")
		$(usex doc "-Ddoc=true" "-Ddoc=false")
		$(usex gst-plugin "-Dgst-plugin=enabled" "-Dgst-plugin=disabled")
		$(usex gtk "-Dclapper-gtk=enabled" "-Dclapper-gtk=disabled")
		$(usex introspection "-Dintrospection=enabled" "-Dintrospection=disabled")
		$(usex mpris "-Dmpris=enabled" "-Dmpris=disabled")
		$(usex plugins "-Denhancers-loader=enabled" "-Denhancers-loader=disabled")
		$(usex server "-Dserver=enabled" "-Dserver=disabled")
		$(usex vapi "-Dvapi=enabled" "-Dvapi=disabled")
	)

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
