EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	aho-corasick@1.0.5
	ammonia@3.3.0
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anyhow@1.0.75
	atom_syndication@0.12.2
	atomic_refcell@0.1.11
	autocfg@1.1.0
	backtrace@0.3.69
	base64@0.21.3
	bitflags@1.3.2
	bitflags@2.4.0
	block@0.1.6
	bumpalo@3.13.0
	bytes@1.4.0
	cairo-rs@0.18.0
	cairo-sys-rs@0.18.0
	cc@1.0.83
	cfg-expr@0.15.4
	cfg-if@1.0.0
	chrono@0.4.28
	core-foundation@0.9.3
	core-foundation-sys@0.8.4
	darling@0.14.4
	darling_core@0.14.4
	darling_macro@0.14.4
	dbus@0.6.5
	deranged@0.3.8
	derive_builder@0.12.0
	derive_builder_core@0.12.0
	derive_builder_macro@0.12.0
	diesel@2.1.1
	diesel_derives@2.1.1
	diesel_migrations@2.1.0
	diesel_table_macro_syntax@0.1.0
	diff@0.1.13
	diligent-date-parser@0.1.4
	either@1.9.0
	encoding_rs@0.8.33
	env_logger@0.10.0
	equivalent@1.0.1
	errno@0.3.3
	errno-dragonfly@0.1.2
	fastrand@2.0.0
	field-offset@0.3.6
	fnv@1.0.7
	foreign-types@0.3.2
	foreign-types-shared@0.1.1
	form_urlencoded@1.2.0
	fragile@2.0.0
	fuchsia-cprng@0.1.1
	futf@0.1.5
	futures@0.3.28
	futures-channel@0.3.28
	futures-core@0.3.28
	futures-executor@0.3.28
	futures-io@0.3.28
	futures-macro@0.3.28
	futures-sink@0.3.28
	futures-task@0.3.28
	futures-util@0.3.28
	gdk-pixbuf@0.18.0
	gdk-pixbuf-sys@0.18.0
	gdk4@0.7.2
	gdk4-sys@0.7.2
	getrandom@0.2.10
	gettext-rs@0.7.0
	gettext-sys@0.21.3
	gimli@0.28.0
	gio@0.18.1
	gio-sys@0.18.1
	glib@0.15.12
	glib@0.18.1
	glib-macros@0.15.13
	glib-macros@0.18.0
	glib-sys@0.15.10
	glib-sys@0.18.1
	glob@0.3.1
	gobject-sys@0.15.10
	gobject-sys@0.18.0
	graphene-rs@0.18.1
	graphene-sys@0.18.1
	gsk4@0.7.2
	gsk4-sys@0.7.2
	gstreamer@0.21.0
	gstreamer-base@0.21.0
	gstreamer-base-sys@0.21.0
	gstreamer-player@0.21.0
	gstreamer-player-sys@0.21.0
	gstreamer-sys@0.21.0
	gstreamer-video@0.21.0
	gstreamer-video-sys@0.21.0
	gtk4@0.7.2
	gtk4-macros@0.7.2
	gtk4-sys@0.7.2
	h2@0.3.21
	hashbrown@0.12.3
	hashbrown@0.14.0
	heck@0.4.1
	hermit-abi@0.3.2
	html2text@0.6.0
	html5ever@0.26.0
	http@0.2.9
	http-body@0.4.5
	httparse@1.8.0
	httpdate@1.0.3
	humansize@1.1.1
	humantime@2.1.0
	hyper@0.14.27
	hyper-tls@0.5.0
	iana-time-zone@0.1.57
	iana-time-zone-haiku@0.1.2
	ident_case@1.0.1
	idna@0.4.0
	indexmap@1.9.3
	indexmap@2.0.0
	ipnet@2.8.0
	is-docker@0.2.0
	is-terminal@0.4.9
	is-wsl@0.4.0
	itertools@0.11.0
	itoa@1.0.9
	js-sys@0.3.64
	lazy_static@1.4.0
	libadwaita@0.5.2
	libadwaita-sys@0.5.2
	libc@0.2.147
	libdbus-sys@0.2.5
	libsqlite3-sys@0.26.0
	linkify@0.10.0
	linux-raw-sys@0.4.5
	locale_config@0.3.0
	lock_api@0.4.10
	log@0.4.20
	mac@0.1.1
	malloc_buf@0.0.6
	maplit@1.0.2
	markup5ever@0.11.0
	markup5ever_rcdom@0.2.0
	memchr@2.6.3
	memoffset@0.9.0
	migrations_internals@2.1.0
	migrations_macros@2.1.0
	mime@0.3.17
	mime_guess@2.0.4
	miniz_oxide@0.7.1
	mio@0.8.8
	mpris-player@0.6.2
	muldiv@1.0.1
	native-tls@0.2.11
	never@0.1.0
	new_debug_unreachable@1.0.4
	num-integer@0.1.45
	num-rational@0.4.1
	num-traits@0.2.16
	num_cpus@1.16.0
	objc@0.2.7
	objc-foundation@0.1.1
	objc_id@0.1.1
	object@0.32.1
	once_cell@1.18.0
	open@5.0.0
	openssl@0.10.57
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.92
	option-operations@0.5.0
	pango@0.18.0
	pango-sys@0.18.0
	parking_lot@0.12.1
	parking_lot_core@0.9.8
	paste@1.0.14
	pathdiff@0.2.1
	percent-encoding@2.3.0
	phf@0.10.1
	phf_codegen@0.10.0
	phf_generator@0.10.0
	phf_shared@0.10.0
	pin-project-lite@0.2.13
	pin-utils@0.1.0
	pkg-config@0.3.27
	ppv-lite86@0.2.17
	precomputed-hash@0.1.1
	pretty-hex@0.3.0
	pretty_assertions@1.4.0
	pretty_env_logger@0.5.0
	proc-macro-crate@1.3.1
	proc-macro-error@1.0.4
	proc-macro-error-attr@1.0.4
	proc-macro2@1.0.66
	quick-xml@0.30.0
	quote@1.0.33
	r2d2@0.8.10
	rand@0.4.6
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.3.1
	rand_core@0.4.2
	rand_core@0.6.4
	rdrand@0.4.0
	redox_syscall@0.3.5
	regex@1.9.5
	regex-automata@0.3.8
	regex-syntax@0.7.5
	remove_dir_all@0.5.3
	reqwest@0.11.20
	rfc822_sanitizer@0.3.6
	rss@2.0.6
	rustc-demangle@0.1.23
	rustc_version@0.4.0
	rustix@0.38.11
	ryu@1.0.15
	schannel@0.1.22
	scheduled-thread-pool@0.2.7
	scopeguard@1.2.0
	security-framework@2.9.2
	security-framework-sys@2.9.1
	semver@1.0.18
	serde@1.0.188
	serde_derive@1.0.188
	serde_json@1.0.105
	serde_spanned@0.6.3
	serde_urlencoded@0.7.1
	siphasher@0.3.11
	slab@0.4.9
	smallvec@1.11.0
	socket2@0.4.9
	socket2@0.5.3
	string_cache@0.8.7
	string_cache_codegen@0.5.2
	strsim@0.10.0
	syn@1.0.109
	syn@2.0.31
	system-deps@6.1.1
	target-lexicon@0.12.11
	temp-dir@0.1.11
	tempdir@0.3.7
	tempfile@3.8.0
	tendril@0.4.3
	termcolor@1.2.0
	thiserror@1.0.48
	thiserror-impl@1.0.48
	time@0.1.45
	time@0.3.28
	time-core@0.1.1
	time-macros@0.2.14
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio@1.32.0
	tokio-macros@2.1.0
	tokio-native-tls@0.3.1
	tokio-util@0.7.8
	toml@0.7.6
	toml_datetime@0.6.3
	toml_edit@0.19.14
	tower-service@0.3.2
	tracing@0.1.37
	tracing-core@0.1.31
	try-lock@0.2.4
	unicase@2.7.0
	unicode-bidi@0.3.13
	unicode-ident@1.0.11
	unicode-normalization@0.1.22
	unicode-width@0.1.10
	url@2.4.1
	utf-8@0.7.6
	vcpkg@0.2.15
	version-compare@0.1.1
	version_check@0.9.4
	want@0.3.1
	wasi@0.10.0+wasi-snapshot-preview1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen@0.2.87
	wasm-bindgen-backend@0.2.87
	wasm-bindgen-futures@0.4.37
	wasm-bindgen-macro@0.2.87
	wasm-bindgen-macro-support@0.2.87
	wasm-bindgen-shared@0.2.87
	wasm-streams@0.3.0
	web-sys@0.3.64
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.5
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows@0.48.0
	windows-sys@0.48.0
	windows-targets@0.48.5
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_msvc@0.48.5
	windows_i686_gnu@0.48.5
	windows_i686_msvc@0.48.5
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_msvc@0.48.5
	winnow@0.5.15
	winreg@0.50.0
	xdg@2.5.2
	xml-rs@0.8.16
	xml5ever@0.17.0
	yansi@0.5.1
"

inherit cargo meson xdg

DESCRIPTION="Listen to your favorite podcasts, right from your desktop."
HOMEPAGE="https://gitlab.gnome.org/World/podcasts"
SRC_URI="${CARGO_CRATE_URIS} https://gitlab.gnome.org/World/podcasts/-/archive/${PV}/${P}.tar.bz2"

LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD Boost-1.0 GPL-3+ MIT MPL-2.0 Unicode-DFS-2016 Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-db/sqlite-3.20
	>=dev-libs/glib-2.76
	>=dev-libs/openssl-1.0
	>=gui-libs/gtk-4.10[wayland]
	>=gui-libs/libadwaita-1.3
	>=media-libs/gstreamer-1.16
	>=media-libs/gst-plugins-base-1.16
	>=media-libs/gst-plugins-bad-1.16
"

BDEPEND="
	>=virtual/rust-1.34
	>=dev-build/meson-0.5.9
	>=sys-devel/clang-14
"

QA_FLAGS_IGNORED="usr/bin/${PN}"

PATCHES=(
	"${FILESDIR}/cargo-env.patch"
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
	glib-compile-schemas /usr/share/glib-2.0/schemas
}

pkg_postrm() {
	xdg_pkg_postrm
}
