FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

COMPATIBLE_HOST = '(x86_64.*).*-linux|aarch64.*-linux|arm-agl-*'

SRC_URI += "file://tmp_patch_allow_arm32_build.diff"
