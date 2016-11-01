DESCRIPTION = "The minimal set of packages for Automotive Subsystem"
LICENSE = "MIT"

inherit packagegroup

PACKAGES = "\
    packagegroup-agl-core-automotive \
    "

ALLOW_EMPTY_${PN} = "1"

RDEPENDS_${PN} += "\
    ${@bb.utils.contains('DISTRO_FEATURES', 'AGL_DEMO', 'hvacplugin', '', d)} \
    "
