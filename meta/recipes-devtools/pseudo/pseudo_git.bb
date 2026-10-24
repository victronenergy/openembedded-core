require pseudo.inc

SRC_URI = "git://git.yoctoproject.org/pseudo;branch=master;protocol=https \
           file://fallback-passwd \
           file://fallback-group \
           "

SRCREV = "9ab513512d8b5180a430ae4fa738cb531154cdef"
S = "${WORKDIR}/git"
PV = "1.9.0+git${SRCPV}"

# error: use of undeclared identifier '_STAT_VER'
COMPATIBLE_HOST_libc-musl = 'null'
