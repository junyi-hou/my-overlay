# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="Guile wrapper over ZeroMQ library"
HOMEPAGE="https://github.com/jerry40/guile-simple-zmq"
EGIT_REPO_URI="https://github.com/jerry40/guile-simple-zmq"

LICENSE="LGPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
    >=dev-scheme/guile-2.0.11
    >=net-libs/zeromq-4.2.1"
DEPEND="${RDEPEND}"

PATCHES=(
    "${FILESDIR}/bufsize.patch"
)

src_install () {
    GUILE_SITE_DIR=`guile -c '(display (%global-site-dir))'`
    mkdir -p ${D}${GUILE_SITE_DIR:1}
    cp ${S}/src/simple-zmq.scm ${D}${GUILE_SITE_DIR:1}/simple-zmq.scm
}
