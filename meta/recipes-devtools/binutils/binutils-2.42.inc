LIC_FILES_CHKSUM="\
    file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552\
    file://COPYING.LIB;md5=9f604d8a4f8e74f4f5140845a21b6674\
    file://COPYING3;md5=d32239bcb673463ab874e80d47fae504\
    file://COPYING3.LIB;md5=6a6a8e020838b23406c81b19c1d46df6\
    file://gas/COPYING;md5=d32239bcb673463ab874e80d47fae504\
    file://include/COPYING;md5=59530bdf33659b29e73d4adb9f9f6552\
    file://include/COPYING3;md5=d32239bcb673463ab874e80d47fae504\
    file://libiberty/COPYING.LIB;md5=a916467b91076e631dd8edb7424769c7\
    file://bfd/COPYING;md5=d32239bcb673463ab874e80d47fae504\
    "

# When upgrading to 2.42, please make sure there is no trailing .0, so
# that upstream version check can work correctly.
PV = "2.42"
CVE_VERSION = "2.42"
SRCBRANCH ?= "binutils-2_42-branch"

UPSTREAM_CHECK_GITTAGREGEX = "binutils-(?P<pver>\d+_(\d_?)*)"

CVE_STATUS[CVE-2023-25584] = "cpe-incorrect: Applies only for version 2.40 and earlier"
CVE_STATUS[CVE-2025-1180] = "patched: fixed by patch for CVE-2025-1176" 

SRCREV ?= "f9488b0d92b591bdf3ff8cce485cb0e1b3727cc0"
BINUTILS_GIT_URI ?= "git://sourceware.org/git/binutils-gdb.git;branch=${SRCBRANCH};protocol=https"
SRC_URI = "\
     ${BINUTILS_GIT_URI} \
     file://0004-Point-scripts-location-to-libdir.patch \
     file://0005-don-t-let-the-distro-compiler-point-to-the-wrong-ins.patch \
     file://0006-warn-for-uses-of-system-directories-when-cross-linki.patch \
     file://0007-fix-the-incorrect-assembling-for-ppc-wait-mnemonic.patch \
     file://0008-Use-libtool-2.4.patch \
     file://0009-Fix-rpath-in-libtool-when-sysroot-is-enabled.patch \
     file://0010-sync-with-OE-libtool-changes.patch \
     file://0011-Check-for-clang-before-checking-gcc-version.patch \
     file://0012-Only-generate-an-RPATH-entry-if-LD_RUN_PATH-is-not-e.patch \
     file://0013-Define-alignof-using-_Alignof-when-using-C11-or-newe.patch \
     file://0014-Remove-duplicate-pe-dll.o-entry-deom-targ_extra_ofil.patch \
     file://0015-gprofng-change-use-of-bignum-to-bigint.patch \
     file://0016-CVE-2024-53589.patch \
     file://0017-dlltool-file-name-too-long.patch \
     file://0018-CVE-2025-0840.patch \
     file://CVE-2025-1176.patch \
     file://CVE-2025-1178.patch \
     file://CVE-2024-57360.patch \
     file://CVE-2025-1181-pre.patch \
     file://CVE-2025-1181.patch \
     file://CVE-2025-1182.patch \
     file://0019-CVE-2025-1153-1.patch \
     file://0020-CVE-2025-1153-2.patch \
     file://0021-CVE-2025-1153-3.patch \
     file://CVE-2025-1179-pre.patch \
     file://CVE-2025-1179.patch \
     file://0022-CVE-2025-5245.patch \
     file://0022-CVE-2025-5244.patch \
     file://0023-CVE-2025-7546.patch \
     file://0023-CVE-2025-7545.patch \
"
S  = "${WORKDIR}/git"
