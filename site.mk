GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-15 \
	gluon-alfred \
	gluon-announced \
	gluon-autoupdater \
	gluon-config-mode-autoupdater \
	gluon-config-mode-contact-info \
	gluon-config-mode-core \
	gluon-config-mode-geo-location \
	gluon-config-mode-hostname \
	gluon-config-mode-mesh-vpn \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-luci-admin \
	gluon-luci-autoupdater \
	gluon-luci-portconfig \
	gluon-luci-wifi-config \
	gluon-luci-private-wifi \
	gluon-next-node \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-setup-mode \
	gluon-status-page \
	iwinfo \
	iptables \
	haveged

# USB for some devices
#ar71xx-generic
GLUON_TLWR1043_SITE_PACKAGES := mod-usb-core kmod-usb2
GLUON_TLWR842_SITE_PACKAGES := mod-usb-core kmod-usb2
GLUON_TLWDR4300_SITE_PACKAGES := mod-usb-core kmod-usb2
GLUON_TLWR2543_SITE_PACKAGES := mod-usb-core kmod-usb2
GLUON_WRT160NL_SITE_PACKAGES := mod-usb-core kmod-usb2
GLUON_DIR825B1_SITE_PACKAGES := mod-usb-core kmod-usb2
GLUON_TLWR710_SITE_PACKAGES := mod-usb-core kmod-usb2
GLUON_GLINET_SITE_PACKAGES := mod-usb-core kmod-usb2
GLUON_WNDR3700_SITE_PACKAGES := mod-usb-core kmod-usb2
GLUON_WZRHPG450H_SITE_PACKAGES := mod-usb-core kmod-usb2
GLUON_WZRHPAG300H_SITE_PACKAGES := mod-usb-core kmod-usb2
GLUON_ARCHERC7_SITE_PACKAGES := mod-usb-core kmod-usb2

#mpc85xx-generic
GLUON_TLWDR4900_SITE_PACKAGES := mod-usb-core kmod-usb2

# support the usb stack on x86 devices
# and add a few common USB NICs
ifeq ($(GLUON_TARGET),x86-generic)
GLUON_SITE_PACKAGES += \
    kmod-usb-core \
    kmod-usb2 \
    kmod-usb-hid \
    kmod-usb-net \
    kmod-usb-net-asix \
    kmod-usb-net-dm9601-ether
endif
ifeq ($(GLUON_TARGET),x86-kvm_guest)
GLUON_SITE_PACKAGES += \
    kmod-usb-core \
    kmod-usb2 \
    kmod-usb-hid \
    kmod-usb-net \
    kmod-usb-net-asix \
    kmod-usb-net-dm9601-ether
endif


DEFAULT_GLUON_RELEASE := 0.7.0

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0

GLUON_LANGS ?= en de
