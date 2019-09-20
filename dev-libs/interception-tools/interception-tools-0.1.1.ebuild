# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils

DESCRIPTION="A minimal composable infrastructure on top of libudev and libevdev"
HOMEPAGE="https://gitlab.com/interception/linux/tools"


if [[ ${PV} == 9999* ]] ; then
	EGIT_SRC_URI="https//gitlab.com/intercepttion/linux/tools.git"
else
	SRC_URI="https://gitlab.com/interception/linux/tools/-/archive/v${PV}/tools-v${PV}.tar.gz -> ${P}.tar.gz"
fi

KEYWORDS="~amd64"
LICENSE="GPL-3+"
SLOT="0"

DEPEND="dev-util/cmake
	dev-libs/libevdev
	dev-cpp/yaml-cpp"
RDEPEND=""

# setting working directory
S="${WORKDIR}/tools-v${PV}"

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
