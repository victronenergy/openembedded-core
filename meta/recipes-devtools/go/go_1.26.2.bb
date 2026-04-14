require go-${PV}.inc
require go-target.inc

inherit linuxloader ptest

CGO_LDFLAGS:append = " -no-pie"

export GO_LDSO = "${@get_linuxloader(d)}"
export CC_FOR_TARGET = "gcc"
export CXX_FOR_TARGET = "g++"

# mips/rv64 doesn't support -buildmode=pie, so skip the QA checking for mips/riscv32 and its
# variants.
python() {
    if 'mips' in d.getVar('TARGET_ARCH') or 'riscv32' in d.getVar('TARGET_ARCH'):
        d.appendVar('INSANE_SKIP:%s' % d.getVar('PN'), " textrel")
}

do_install_ptest() {
    install -d ${D}${PTEST_PATH}/src
    install -d ${D}${PTEST_PATH}/pkg/include

    cp ${S}/pkg/include/* ${D}${PTEST_PATH}/pkg/include/
    echo "go${PV}" > ${D}${PTEST_PATH}/VERSION

    cd ${S}/src
    find . -type d -exec install -d ${D}${PTEST_PATH}/src/{} \;
    find . -type f \
        ! -path "*/testdata/*.elf*" \
        ! -path "*/testdata/*-x86-64*" \
        ! -path "*/testdata/*.obj" \
        ! -path "*/testdata/*.syso" \
        ! -path "*/testdata/*.so" \
        ! -path "*/testdata/*.so_" \
        ! -path "*/testdata/*-exec" \
        ! -path "*/testdata/test32*" \
        ! -path "*/testdata/test64*" \
        ! -path "*/race/*.syso" \
        ! -path "*/boring/syso/*.syso" \
        -exec install -m 0644 {} ${D}${PTEST_PATH}/src/{} \;
}

RDEPENDS:${PN}-ptest += "bash tzdata git packagegroup-core-buildessential"
