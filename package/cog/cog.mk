################################################################################
#
# cog
#
################################################################################

COG_VERSION = 0.6.0
COG_SITE = https://wpewebkit.org/releases
COG_SOURCE = cog-$(COG_VERSION).tar.xz
COG_INSTALL_STAGING = YES
COG_DEPENDENCIES = dbus wpewebkit wpebackend-fdo libxkbcommon
COG_LICENSE = MIT
COG_LICENSE_FILES = COPYING
COG_CONF_OPTS = \
	-DCOG_BUILD_PROGRAMS=ON \
	-DCOG_PLATFORM_FDO=ON \
	-DCOG_PLATFORM_DRM=OFF \
	-DCOG_WESTON_DIRECT_DISPLAY=OFF \
	-DINSTALL_MAN_PAGES=OFF \
	-DCOG_HOME_URI='$(call qstrip,$(BR2_PACKAGE_COG_PROGRAMS_HOME_URI))'

$(eval $(cmake-package))
