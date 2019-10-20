# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="A jupyter kernel for GNU guile"
HOMEPAGE="https://github.com/jerry40/guile-kernel"
EGIT_REPO_URI="https://github.com/jerry40/guile-kernel"

LICENSE="LGPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
    >=dev-scheme/guile-2.0.11
    dev-scheme/guile-simple-zmq
    >=dev-scheme/guile-json-3.1.0"
DEPEND="${RDEPEND}"

PATCHES=(
    "${FILESDIR}/kernel-location.patch"
)

src_install () {
    DIST="${D}/usr/share/jupyter/kernels/guile"
    mkdir -p ${DIST}
    cp ${S}/src/* ${DIST}
}
