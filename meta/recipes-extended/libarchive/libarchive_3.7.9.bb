SUMMARY = "Support for reading various archive formats"
DESCRIPTION = "C library and command-line tools for reading and writing tar, cpio, zip, ISO, and other archive formats"
HOMEPAGE = "http://www.libarchive.org/"
SECTION = "devel"
LICENSE = "BSD-2-Clause"
LIC_FILES_CHKSUM = "file://COPYING;md5=d499814247adaee08d88080841cb5665"

DEPENDS = "e2fsprogs-native"

PACKAGECONFIG ?= "zlib bz2 xz zstd ${@bb.utils.filter('DISTRO_FEATURES', 'acl xattr', d)}"

DEPENDS_BZIP2 = "bzip2-replacement-native"
DEPENDS_BZIP2:class-target = "bzip2"

PACKAGECONFIG[acl] = "--enable-acl,--disable-acl,acl,"
PACKAGECONFIG[xattr] = "--enable-xattr,--disable-xattr,attr,"
PACKAGECONFIG[zlib] = "--with-zlib,--without-zlib,zlib,"
PACKAGECONFIG[bz2] = "--with-bz2lib,--without-bz2lib,${DEPENDS_BZIP2},"
PACKAGECONFIG[xz] = "--with-lzma,--without-lzma,xz,"
PACKAGECONFIG[openssl] = "--with-openssl,--without-openssl,openssl,"
PACKAGECONFIG[libb2] = "--with-libb2,--without-libb2,libb2,"
PACKAGECONFIG[libxml2] = "--with-xml2,--without-xml2,libxml2,"
PACKAGECONFIG[expat] = "--with-expat,--without-expat,expat,"
PACKAGECONFIG[lzo] = "--with-lzo2,--without-lzo2,lzo,"
PACKAGECONFIG[nettle] = "--with-nettle,--without-nettle,nettle,"
PACKAGECONFIG[lz4] = "--with-lz4,--without-lz4,lz4,"
PACKAGECONFIG[mbedtls] = "--with-mbedtls,--without-mbedtls,mbedtls,"
PACKAGECONFIG[zstd] = "--with-zstd,--without-zstd,zstd,"

EXTRA_OECONF += "--enable-largefile --without-iconv"

SRC_URI = "http://libarchive.org/downloads/libarchive-${PV}.tar.gz \
           file://configurehack.patch \
           file://CVE-2025-5914.patch \
           file://CVE-2025-5915.patch \
           file://CVE-2025-5916.patch \
           file://CVE-2025-5917.patch \
           file://CVE-2025-5918-0001.patch \
           file://CVE-2025-5918-0002.patch \
           "
UPSTREAM_CHECK_URI = "http://libarchive.org/"

SRC_URI[sha256sum] = "aa90732c5a6bdda52fda2ad468ac98d75be981c15dde263d7b5cf6af66fd009f"

inherit autotools update-alternatives pkgconfig

CPPFLAGS += "-I${WORKDIR}/extra-includes"

do_configure[cleandirs] += "${WORKDIR}/extra-includes"
do_configure:prepend() {
	# We just need the headers for some type constants, so no need to
	# build all of e2fsprogs for the target
	cp -R ${STAGING_INCDIR_NATIVE}/ext2fs ${WORKDIR}/extra-includes/
}

ALTERNATIVE_PRIORITY = "80"

PACKAGES =+ "bsdtar"
FILES:bsdtar = "${bindir}/bsdtar"

ALTERNATIVE:bsdtar = "tar"
ALTERNATIVE_LINK_NAME[tar] = "${base_bindir}/tar"
ALTERNATIVE_TARGET[tar] = "${bindir}/bsdtar"

PACKAGES =+ "bsdcpio"
FILES:bsdcpio = "${bindir}/bsdcpio"

ALTERNATIVE:bsdcpio = "cpio"
ALTERNATIVE_LINK_NAME[cpio] = "${base_bindir}/cpio"
ALTERNATIVE_TARGET[cpio] = "${bindir}/bsdcpio"

BBCLASSEXTEND = "native nativesdk"
