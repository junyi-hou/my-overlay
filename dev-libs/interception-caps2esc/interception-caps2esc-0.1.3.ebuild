# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils

DESCRIPTION="Remap caplock to ctrl/escape"
HOMEPAGE="https://gitlab.com/interception/linux/plugins/caps2esc"


if [[ ${PV} == 9999* ]] ; then
	EGIT_SRC_URI="https//gitlab.com/intercepttion/linux/plugins/caps2esc.git"
else
	SRC_URI="https://gitlab.com/interception/linux/plugins/caps2esc/-/archive/v${PV}/caps2esc-v${PV}.tar.gz -> ${P}.tar.gz"
fi

KEYWORDS="~amd64"
LICENSE="MIT"
SLOT="0"

RDEPEND="dev-libs/interception-tools"
DEPEND="${RDEPEND}
	dev-util/cmake"

# setting working directory
S="${WORKDIR}/caps2esc-v${PV}"

src_prepare(){
	cmake-utils_src_prepare
}

src_configure(){
	cmake-utils_src_configure
}

src_compile(){
	cmake-utils_src_compile
}

src_install(){
	cmake-utils_src_install
}
