FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# Extra configuration options
SRC_URI += "file://fanotify.cfg \
            file://uinput.cfg \
            file://hid.cfg "
KERNEL_CONFIG_FRAGMENTS_append = " ${WORKDIR}/fanotify.cfg ${WORKDIR}/uinput.cfg ${WORKDIR}/hid.cfg"

# Enable support for TP-Link TL-W722N USB Wifi adapter
SRC_URI += " file://ath9k_htc.cfg "
KERNEL_CONFIG_FRAGMENTS_append = " ${WORKDIR}/ath9k_htc.cfg"

# Enable support for RTLSDR
SRC_URI += " file://rtl_sdr.cfg "
KERNEL_CONFIG_FRAGMENTS_append = " ${WORKDIR}/rtl_sdr.cfg"
