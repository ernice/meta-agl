FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

SRC_URI_append = "\
    file://weston-intel.ini \
    "

do_install_append() {
    WESTON_INI_CONFIG=${sysconfdir}/xdg/weston
    install -d ${D}${WESTON_INI_CONFIG}
    install -m 0644 ${WORKDIR}/weston-intel.ini ${D}${WESTON_INI_CONFIG}/weston.ini
}

FILES_${PN} += " \
    ${sysconfdir}/xdg/weston/weston.ini \
    "
