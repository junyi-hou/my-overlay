# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Config and service file for dev-libs/interception-caps2esc"
HOMEPAGE="https://github.com/junyi-hou/caps2esc-gentoo"


SRC_URI="https://github.com/junyi-hou/caps2esc-gentoo/archive/${PV}.tar.gz -> ${P}.tar.gz"

KEYWORDS="~amd64"
LICENSE="MIT"
SLOT="0"

RDEPEND="dev-libs/interception-caps2esc"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${PN}-gentoo-${PV}"

src_install(){
	mkdir -p "${D}/usr/sbin"
	mkdir -p "${D}/etc/default"
	mkdir -p "${D}/etc/init.d"
	cp "${S}/bin/caps2escd" "${D}/usr/sbin/"
	cp "${S}/config/caps2esc" "${D}/etc/init.d/"
	cp "${S}/config/caps2esc.yaml" "${D}/etc/default/"
}
