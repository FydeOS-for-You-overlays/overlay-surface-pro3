# Copyright (c) 2018 The Fyde OS Authors. All rights reserved.
# Distributed under the terms of the BSD

EAPI="5"

DESCRIPTION="empty project"
HOMEPAGE="http://fydeos.com"

LICENSE="BSD-Google"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="
    chromeos-base/chromeos-accelerometer-init
	chromeos-base/detachable-emulator
  chromeos-base/acpi-patch-service
"

DEPEND="${RDEPEND}"

S=${WORKDIR}

src_install() {
  insinto /etc/modprobe.d
  doins ${FILESDIR}/mwifiex.conf

  insinto /etc/init
  doins ${FILESDIR}/tablet_mode/init-tablet-mode.conf
  doins ${FILESDIR}/accelmeter/cros-ec-accel.conf

  insinto /lib/udev/rules.d
  doins ${FILESDIR}/tablet_mode/99-usb-keyboad-detect.rules
  doins ${FILESDIR}/accelmeter/99-cros-ec-accel.rules

  exeinto /usr/sbin
  doexe ${FILESDIR}/reloadwifi.sh

  insinto /usr/share/fydeos_acpi
  doins ${FILESDIR}/acpi_patch/lid2.aml
}
