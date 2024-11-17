EAPI=8

CRATES="
	adler@1.0.2
	aead@0.3.2
	aes@0.6.0
	aes-gcm@0.8.0
	aes-soft@0.6.4
	aesni@0.10.0
	aho-corasick@0.7.18
	anyhow@1.0.56
	async-channel@1.6.1
	async-executor@1.4.1
	async-global-executor@2.0.3
	async-io@1.6.0
	async-lock@2.5.0
	async-mutex@1.4.0
	async-std@1.12.0
	async-task@4.2.0
	async-trait@0.1.53
	atomic-waker@1.0.0
	atty@0.2.14
	autocfg@1.1.0
	base-x@0.2.8
	base64@0.13.0
	bit_field@0.10.1
	bitflags@1.3.2
	bitflags@2.4.0
	bitmaps@2.1.0
	block@0.1.6
	block-buffer@0.9.0
	blocking@1.2.0
	bumpalo@3.9.1
	bytemuck@1.8.0
	byteorder@1.4.3
	bytes@0.5.6
	bytes@1.1.0
	cache-padded@1.2.0
	cairo-rs@0.19.2
	cairo-sys-rs@0.19.2
	cc@1.0.73
	cfg-expr@0.10.2
	cfg-if@1.0.0
	cipher@0.2.5
	color_quant@1.1.0
	concurrent-queue@1.2.2
	const_fn@0.4.9
	convert_case@0.4.0
	cookie@0.14.4
	cpufeatures@0.2.2
	cpuid-bool@0.2.0
	crc32fast@1.3.2
	crossbeam-channel@0.5.4
	crossbeam-deque@0.8.1
	crossbeam-epoch@0.9.8
	crossbeam-utils@0.8.8
	crunchy@0.2.2
	crypto-mac@0.10.1
	cssparser@0.27.2
	cssparser-macros@0.6.0
	ctor@0.1.22
	ctr@0.6.0
	curl@0.4.43
	curl-sys@0.4.53+curl-7.82.0
	dashmap@4.0.2
	data-url@0.3.1
	derive_more@0.99.17
	digest@0.9.0
	discard@1.0.4
	dtoa@0.4.8
	dtoa-short@0.3.3
	ego-tree@0.6.2
	either@1.6.1
	encoding_rs@0.8.30
	env_logger@0.7.1
	equivalent@1.0.1
	event-listener@2.5.2
	exr@1.5.3
	fastrand@1.7.0
	field-offset@0.3.4
	flate2@1.0.25
	flume@0.9.2
	flume@0.10.14
	fnv@1.0.7
	form_urlencoded@1.0.1
	futf@0.1.5
	futures-channel@0.3.21
	futures-core@0.3.21
	futures-executor@0.3.21
	futures-io@0.3.21
	futures-lite@1.12.0
	futures-macro@0.3.21
	futures-sink@0.3.21
	futures-task@0.3.21
	futures-util@0.3.21
	fxhash@0.2.1
	gdk-pixbuf@0.19.2
	gdk-pixbuf-sys@0.19.0
	gdk4@0.8.1
	gdk4-sys@0.8.1
	generic-array@0.14.5
	getopts@0.2.21
	getrandom@0.1.16
	getrandom@0.2.6
	gettext-rs@0.6.0
	gettext-sys@0.21.3
	ghash@0.3.1
	gif@0.11.3
	gio@0.19.3
	gio-sys@0.19.0
	glib@0.19.3
	glib-macros@0.19.3
	glib-sys@0.19.0
	gloo-timers@0.2.3
	gobject-sys@0.19.0
	graphene-rs@0.19.2
	graphene-sys@0.19.0
	gsk4@0.8.1
	gsk4-sys@0.8.1
	gtk-macros@0.3.0
	gtk4@0.8.1
	gtk4-macros@0.8.1
	gtk4-sys@0.8.1
	half@2.2.1
	hashbrown@0.14.3
	heck@0.4.0
	heck@0.5.0
	hermit-abi@0.1.19
	hkdf@0.10.0
	hmac@0.10.1
	html5ever@0.25.2
	http@0.2.6
	http-client@6.5.1
	http-types@2.12.0
	human_bytes@0.4.1
	humantime@1.3.0
	idna@0.2.3
	im-rc@15.1.0
	image@0.24.5
	indexmap@2.2.5
	infer@0.2.3
	instant@0.1.12
	isahc@0.9.14
	itoa@0.4.8
	itoa@1.0.1
	jpeg-decoder@0.3.0
	js-sys@0.3.56
	kv-log-macro@1.0.7
	lazy_static@1.4.0
	lebe@0.5.2
	libadwaita@0.6.0
	libadwaita-sys@0.6.0
	libc@0.2.121
	libnghttp2-sys@0.1.7+1.45.0
	libz-sys@1.1.5
	locale_config@0.3.0
	lock_api@0.4.6
	log@0.4.16
	mac@0.1.1
	malloc_buf@0.0.6
	markup5ever@0.10.1
	matches@0.1.9
	memchr@2.7.1
	memoffset@0.6.5
	mime@0.3.16
	mime_guess@2.0.4
	miniz_oxide@0.6.2
	nanorand@0.7.0
	new_debug_unreachable@1.0.4
	nodrop@0.1.14
	num-integer@0.1.44
	num-rational@0.4.1
	num-traits@0.2.14
	num_cpus@1.13.1
	objc@0.2.7
	objc-foundation@0.1.1
	objc_id@0.1.1
	once_cell@1.10.0
	opaque-debug@0.3.0
	openssl-probe@0.1.5
	openssl-sys@0.9.72
	pango@0.19.3
	pango-sys@0.19.0
	parking@2.0.0
	parking_lot@0.12.0
	parking_lot_core@0.9.1
	percent-encoding@2.1.0
	pest@2.1.3
	phf@0.8.0
	phf_codegen@0.8.0
	phf_generator@0.8.0
	phf_generator@0.10.0
	phf_macros@0.8.0
	phf_shared@0.8.0
	phf_shared@0.10.0
	pin-project@1.0.10
	pin-project-internal@1.0.10
	pin-project-lite@0.2.8
	pin-utils@0.1.0
	pkg-config@0.3.30
	png@0.17.7
	polling@2.2.0
	polyval@0.4.5
	ppv-lite86@0.2.16
	precomputed-hash@0.1.1
	pretty_env_logger@0.4.0
	proc-macro-crate@3.1.0
	proc-macro-error@1.0.4
	proc-macro-error-attr@1.0.4
	proc-macro-hack@0.5.19
	proc-macro2@1.0.79
	quick-error@1.2.3
	quote@1.0.35
	rand@0.7.3
	rand@0.8.5
	rand_chacha@0.2.2
	rand_chacha@0.3.1
	rand_core@0.5.1
	rand_core@0.6.3
	rand_hc@0.2.0
	rand_pcg@0.2.1
	rand_xoshiro@0.6.0
	rayon@1.5.1
	rayon-core@1.9.1
	redox_syscall@0.2.12
	regex@1.5.5
	regex-syntax@0.6.25
	rustc_version@0.2.3
	rustc_version@0.3.3
	rustc_version@0.4.0
	ryu@1.0.9
	schannel@0.1.19
	scoped_threadpool@0.1.9
	scopeguard@1.1.0
	scraper@0.12.0
	selectors@0.22.0
	semver@0.9.0
	semver@0.11.0
	semver@1.0.7
	semver-parser@0.7.0
	semver-parser@0.10.2
	serde@1.0.136
	serde_derive@1.0.136
	serde_json@1.0.79
	serde_qs@0.8.5
	serde_urlencoded@0.7.1
	servo_arc@0.1.1
	sha1@0.6.1
	sha1_smol@1.0.0
	sha2@0.9.9
	simd-adler32@0.3.4
	siphasher@0.3.10
	sized-chunks@0.6.5
	slab@0.4.5
	sluice@0.5.5
	smallvec@1.13.2
	socket2@0.4.4
	spin@0.9.5
	spinning_top@0.2.4
	stable_deref_trait@1.2.0
	standback@0.2.17
	stdweb@0.4.20
	stdweb-derive@0.5.3
	stdweb-internal-macros@0.2.9
	stdweb-internal-runtime@0.1.5
	string_cache@0.8.4
	string_cache_codegen@0.5.2
	subtle@2.4.1
	surf@2.3.2
	syn@1.0.89
	syn@2.0.53
	system-deps@6.0.2
	temp-dir@0.1.11
	tendril@0.4.3
	termcolor@1.1.3
	thin-slice@0.1.1
	thiserror@1.0.30
	thiserror-impl@1.0.30
	threadpool@1.8.1
	tiff@0.8.1
	time@0.2.27
	time-macros@0.1.1
	time-macros-impl@0.1.2
	tinyvec@1.5.1
	tinyvec_macros@0.1.0
	toml@0.5.8
	toml_datetime@0.6.5
	toml_edit@0.21.1
	tracing@0.1.32
	tracing-attributes@0.1.20
	tracing-core@0.1.23
	tracing-futures@0.2.5
	typenum@1.15.0
	ucd-trie@0.1.3
	unicase@2.6.0
	unicode-bidi@0.3.7
	unicode-ident@1.0.11
	unicode-normalization@0.1.19
	unicode-width@0.1.9
	unicode-xid@0.2.2
	universal-hash@0.4.1
	url@2.2.2
	utf-8@0.7.6
	value-bag@1.0.0-alpha.8
	vcpkg@0.2.15
	version-compare@0.1.0
	version_check@0.9.4
	waker-fn@1.1.0
	wasi@0.9.0+wasi-snapshot-preview1
	wasi@0.10.2+wasi-snapshot-preview1
	wasm-bindgen@0.2.79
	wasm-bindgen-backend@0.2.79
	wasm-bindgen-futures@0.4.29
	wasm-bindgen-macro@0.2.79
	wasm-bindgen-macro-support@0.2.79
	wasm-bindgen-shared@0.2.79
	web-sys@0.3.56
	weezl@0.1.5
	wepoll-ffi@0.1.2
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.5
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows-sys@0.32.0
	windows-sys@0.52.0
	windows-targets@0.52.4
	windows_aarch64_gnullvm@0.52.4
	windows_aarch64_msvc@0.32.0
	windows_aarch64_msvc@0.52.4
	windows_i686_gnu@0.32.0
	windows_i686_gnu@0.52.4
	windows_i686_msvc@0.32.0
	windows_i686_msvc@0.52.4
	windows_x86_64_gnu@0.32.0
	windows_x86_64_gnu@0.52.4
	windows_x86_64_gnullvm@0.52.4
	windows_x86_64_msvc@0.32.0
	windows_x86_64_msvc@0.52.4
	winnow@0.5.40
	zune-inflate@0.2.50
"

inherit cargo meson xdg

DESCRIPTION="Test social media cards locally"
HOMEPAGE="https://github.com/rafaelmardojai/share-preview"
SRC_URI="${CARGO_CRATE_URIS} https://github.com/rafaelmardojai/share-preview/releases/download/${PV}/share-preview-${PV}.tar.xz -> ${P}.tar.xz"
S="${WORKDIR}/share-preview-${PV}"

LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-2 Boost-1.0 GPL-3+ ISC MIT MPL-2.0 MPL-2.0+ Unicode-DFS-2016 Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	>=gui-libs/gtk-4.0[wayland]
    >=gui-libs/libadwaita-1.0
    >=dev-libs/glib-2.79
"

BDEPEND="
	>=dev-lang/rust-1.53:=
	>=dev-build/meson-0.63.0
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
}

pkg_postrm() {
	xdg_pkg_postrm
}
