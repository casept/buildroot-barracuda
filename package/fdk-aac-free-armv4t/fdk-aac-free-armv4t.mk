################################################################################
#
# fdk-aac-free-armv4t
#
################################################################################

FDK_AAC_FREE_ARMV4T_VERSION = 2.0.0
FDK_AAC_FREE_ARMV4T_SOURCE = fdk-aac-free-$(FDK_AAC_FREE_ARMV4T_VERSION)-radio.tar.bz2
FDK_AAC_FREE_ARMV4T_LICENSE = fdk-aac license
FDK_AAC_FREE_ARMV4T_LICENSE_FILES = NOTICE
FDK_AAC_FREE_ARMV4T_SITE = https://www.megapico.co.uk/sharpfin/media_server2
FDK_AAC_FREE_ARMV4T_INSTALL_STAGING = YES

# fdk-aac has some assembly function that is not present in Thumb mode:
# Error: selected processor does not support `mcr p15,0,r3,c7,c10,5' in Thumb mode
# so, we desactivate Thumb mode
ifeq ($(BR2_ARM_INSTRUCTIONS_THUMB),y)
FDK_AAC_FREE_ARMV4T_CONF_ENV += CXXFLAGS="$(TARGET_CFLAGS) -marm"
endif

$(eval $(autotools-package))
