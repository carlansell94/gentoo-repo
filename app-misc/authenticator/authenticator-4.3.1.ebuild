EAPI=8

CRATES="
	adler@1.0.2
	aead@0.5.2
	aes@0.8.2
	aes-gcm@0.10.1
	aho-corasick@0.7.20
	android_system_properties@0.1.5
	anyhow@1.0.70
	arrayref@0.3.7
	arrayvec@0.7.2
	ashpd@0.4.0
	async-broadcast@0.5.1
	async-recursion@1.0.4
	async-trait@0.1.68
	atomic_refcell@0.1.9
	autocfg@1.1.0
	base64@0.13.1
	base64@0.21.0
	bindgen@0.64.0
	bitflags@1.3.2
	blake2b_simd@1.0.1
	block@0.1.6
	block-buffer@0.10.4
	block-padding@0.3.3
	bumpalo@3.12.0
	bytecount@0.6.3
	bytemuck@1.13.1
	byteorder@1.4.3
	bytes@1.4.0
	cairo-rs@0.17.0
	cairo-sys-rs@0.17.0
	camino@1.1.4
	cargo-platform@0.1.2
	cargo_metadata@0.14.2
	cbc@0.1.2
	cc@1.0.79
	cexpr@0.6.0
	cfg-expr@0.14.0
	cfg-if@1.0.0
	checked_int_cast@1.0.0
	chrono@0.4.24
	cipher@0.4.4
	clang-sys@1.6.1
	codespan-reporting@0.11.1
	color_quant@1.1.0
	constant_time_eq@0.1.5
	constant_time_eq@0.2.5
	cookie-factory@0.3.2
	core-foundation@0.9.3
	core-foundation-sys@0.8.4
	cpufeatures@0.2.6
	crc32fast@1.3.2
	crypto-common@0.1.6
	ctr@0.9.2
	cxx@1.0.94
	cxx-build@1.0.94
	cxxbridge-flags@1.0.94
	cxxbridge-macro@1.0.94
	data-encoding@2.3.3
	derivative@2.2.0
	diesel@2.0.4
	diesel_derives@2.0.2
	diesel_migrations@2.0.0
	digest@0.10.6
	dirs@5.0.0
	dirs-sys@0.4.0
	doc-comment@0.3.3
	either@1.8.1
	encoding_rs@0.8.32
	enum-ordinalize@3.1.12
	enumflags2@0.7.7
	enumflags2_derive@0.7.7
	errno@0.3.1
	errno-dragonfly@0.1.2
	error-chain@0.12.4
	event-listener@2.5.3
	fastrand@1.9.0
	fdeflate@0.3.0
	field-offset@0.3.5
	flate2@1.0.25
	fnv@1.0.7
	foreign-types@0.3.2
	foreign-types-shared@0.1.1
	form_urlencoded@1.1.0
	futures-channel@0.3.28
	futures-core@0.3.28
	futures-executor@0.3.28
	futures-io@0.3.28
	futures-macro@0.3.28
	futures-sink@0.3.28
	futures-task@0.3.28
	futures-util@0.3.28
	gdk-pixbuf@0.17.0
	gdk-pixbuf-sys@0.17.0
	gdk4@0.6.3
	gdk4-sys@0.6.3
	gdk4-wayland@0.6.3
	gdk4-wayland-sys@0.6.3
	gdk4-x11@0.6.3
	gdk4-x11-sys@0.6.3
	generic-array@0.14.7
	getrandom@0.2.9
	gettext-rs@0.7.0
	gettext-sys@0.21.3
	ghash@0.5.0
	gio@0.17.4
	gio-sys@0.17.4
	glib@0.17.8
	glib-macros@0.17.8
	glib-sys@0.17.4
	glob@0.3.1
	gobject-sys@0.17.4
	graphene-rs@0.17.1
	graphene-sys@0.17.0
	gsk4@0.6.3
	gsk4-sys@0.6.3
	gst-plugin-gtk4@0.10.5
	gst-plugin-version-helper@0.7.5
	gstreamer@0.20.3
	gstreamer-base@0.20.0
	gstreamer-base-sys@0.20.0
	gstreamer-gl@0.20.0
	gstreamer-gl-egl@0.20.0
	gstreamer-gl-egl-sys@0.20.0
	gstreamer-gl-sys@0.20.0
	gstreamer-gl-wayland@0.20.0
	gstreamer-gl-wayland-sys@0.20.0
	gstreamer-gl-x11@0.20.0
	gstreamer-gl-x11-sys@0.20.0
	gstreamer-sys@0.20.0
	gstreamer-video@0.20.4
	gstreamer-video-sys@0.20.0
	gtk4@0.6.6
	gtk4-macros@0.6.6
	gtk4-sys@0.6.3
	h2@0.3.18
	hashbrown@0.12.3
	heck@0.4.1
	hermit-abi@0.2.6
	hermit-abi@0.3.1
	hex@0.4.3
	hkdf@0.12.3
	hmac@0.12.1
	http@0.2.9
	http-body@0.4.5
	httparse@1.8.0
	httpdate@1.0.2
	hyper@0.14.26
	hyper-tls@0.5.0
	iana-time-zone@0.1.56
	iana-time-zone-haiku@0.1.1
	idna@0.3.0
	image@0.23.14
	image@0.24.6
	indexmap@1.9.3
	inout@0.1.3
	instant@0.1.12
	io-lifetimes@1.0.10
	ipnet@2.7.2
	itertools@0.10.5
	itoa@1.0.6
	js-sys@0.3.61
	lazy_static@1.4.0
	lazycell@1.3.0
	libadwaita@0.4.1
	libadwaita-sys@0.4.1
	libc@0.2.141
	libm@0.2.6
	libspa@0.6.0
	libspa-sys@0.6.0
	libsqlite3-sys@0.26.0
	link-cplusplus@1.0.8
	linux-raw-sys@0.3.3
	locale_config@0.3.0
	lock_api@0.4.9
	log@0.4.17
	malloc_buf@0.0.6
	memchr@2.5.0
	memoffset@0.7.1
	memoffset@0.8.0
	migrations_internals@2.0.0
	migrations_macros@2.0.0
	mime@0.3.17
	minimal-lexical@0.2.1
	miniz_oxide@0.6.2
	miniz_oxide@0.7.1
	mio@0.8.6
	muldiv@1.0.1
	native-tls@0.2.11
	nix@0.26.2
	nom@7.1.3
	num@0.4.0
	num-bigint@0.4.3
	num-bigint-dig@0.8.2
	num-complex@0.4.3
	num-integer@0.1.45
	num-iter@0.1.43
	num-rational@0.3.2
	num-rational@0.4.1
	num-traits@0.2.15
	num_cpus@1.15.0
	objc@0.2.7
	objc-foundation@0.1.1
	objc_id@0.1.1
	once_cell@1.17.1
	oo7@0.1.2
	opaque-debug@0.3.0
	openssl@0.10.50
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.85
	option-operations@0.5.0
	ordered-stream@0.2.0
	pango@0.17.4
	pango-sys@0.17.0
	parking_lot@0.12.1
	parking_lot_core@0.9.7
	paste@1.0.12
	pbkdf2@0.12.1
	peeking_take_while@0.1.2
	percent-encoding@2.2.0
	pin-project-lite@0.2.9
	pin-utils@0.1.0
	pipewire@0.6.0
	pipewire-sys@0.6.0
	pkg-config@0.3.26
	png@0.17.8
	polyval@0.6.0
	ppv-lite86@0.2.17
	pretty-hex@0.3.0
	proc-macro-crate@1.3.1
	proc-macro-error@1.0.4
	proc-macro-error-attr@1.0.4
	proc-macro2@1.0.56
	prost@0.11.9
	prost-derive@0.11.9
	pulldown-cmark@0.9.2
	qrcode@0.12.0
	quick-xml@0.28.2
	quote@1.0.26
	r2d2@0.8.10
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	redox_syscall@0.2.16
	redox_syscall@0.3.5
	redox_users@0.4.3
	regex@1.7.3
	regex-syntax@0.6.29
	reqwest@0.11.16
	ring@0.16.20
	roxmltree@0.18.0
	rust-argon2@1.0.0
	rustc-hash@1.1.0
	rustc_version@0.4.0
	rustix@0.37.12
	ryu@1.0.13
	salsa20@0.10.2
	same-file@1.0.6
	schannel@0.1.21
	scheduled-thread-pool@0.2.7
	scopeguard@1.1.0
	scratch@1.0.5
	scrypt@0.11.0
	search-provider@0.5.2
	security-framework@2.8.2
	security-framework-sys@2.8.0
	semver@1.0.17
	serde@1.0.160
	serde_derive@1.0.160
	serde_json@1.0.96
	serde_repr@0.1.12
	serde_spanned@0.6.1
	serde_urlencoded@0.7.1
	sha1@0.10.5
	sha2@0.10.6
	sharded-slab@0.1.4
	shlex@1.1.0
	simd-adler32@0.3.5
	skeptic@0.13.7
	slab@0.4.8
	smallvec@1.10.0
	socket2@0.4.9
	spin@0.5.2
	static_assertions@1.1.0
	subtle@2.4.1
	svg_metadata@0.4.4
	syn@1.0.109
	syn@2.0.15
	system-deps@6.0.4
	temp-dir@0.1.11
	tempfile@3.5.0
	termcolor@1.2.0
	thiserror@1.0.40
	thiserror-impl@1.0.40
	thread_local@1.1.7
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio@1.27.0
	tokio-macros@2.0.0
	tokio-native-tls@0.3.1
	tokio-util@0.7.7
	toml@0.5.11
	toml@0.7.3
	toml_datetime@0.6.1
	toml_edit@0.19.8
	tower-service@0.3.2
	tracing@0.1.37
	tracing-attributes@0.1.23
	tracing-core@0.1.30
	tracing-subscriber@0.3.16
	try-lock@0.2.4
	typenum@1.16.0
	uds_windows@1.0.2
	unicase@2.6.0
	unicode-bidi@0.3.13
	unicode-ident@1.0.8
	unicode-normalization@0.1.22
	unicode-width@0.1.10
	universal-hash@0.5.0
	untrusted@0.7.1
	url@2.3.1
	uuid@1.3.1
	vcpkg@0.2.15
	version-compare@0.1.1
	version_check@0.9.4
	walkdir@2.3.3
	want@0.3.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen@0.2.84
	wasm-bindgen-backend@0.2.84
	wasm-bindgen-futures@0.4.34
	wasm-bindgen-macro@0.2.84
	wasm-bindgen-macro-support@0.2.84
	wasm-bindgen-shared@0.2.84
	web-sys@0.3.61
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.5
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows@0.48.0
	windows-sys@0.42.0
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-targets@0.42.2
	windows-targets@0.48.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.0
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.0
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.0
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.0
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.0
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.0
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.0
	winnow@0.4.1
	winreg@0.10.1
	xdg-home@1.0.0
	xmlparser@0.13.5
	zbar-rust@0.0.21
	zbus@3.12.0
	zbus_macros@3.12.0
	zbus_names@2.5.0
	zeroize@1.6.0
	zeroize_derive@1.4.2
	zvariant@3.12.0
	zvariant_derive@3.12.0
	zvariant_utils@1.0.0
"

inherit cargo meson xdg

DESCRIPTION="Generate Two-Factor Codes"
HOMEPAGE="https://gitlab.gnome.org/World/Authenticator"
SRC_URI="${CARGO_CRATE_URIS} https://gitlab.gnome.org/World/Authenticator/-/archive/${PV}/Authenticator-${PV}.tar.bz2 -> ${P}.tar.gz"
S="${WORKDIR}/Authenticator-${PV}"

LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-2 Boost-1.0 CC0-1.0 GPL-3+ ISC LGPL-2.1 MIT MIT-0 MPL-2.0 Unicode-DFS-2016 Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	>=gui-libs/gtk-4.10[wayland]
	>=dev-libs/glib-2.56
	>=media-libs/gstreamer-1.18
	>=media-libs/gst-plugins-base-1.18
	>=media-libs/gst-plugins-bad-1.18
	>=gui-libs/libadwaita-1.2
	>=media-gfx/zbar-0.20
	>=media-video/pipewire-0.3
"

BDEPEND="
	>=virtual/rust-1.53
	>=dev-build/meson-0.5.9
	>=sys-devel/clang-14
"

QA_FLAGS_IGNORED="usr/bin/${PN}"

PATCHES=(
	"${FILESDIR}/${PV}-cargo-env.patch"
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
