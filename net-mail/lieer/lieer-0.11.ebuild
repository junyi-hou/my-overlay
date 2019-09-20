# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7} )

inherit distutils-r1

DESCRIPTION="Gmail fetcher and two-way tag synchronization between notmuch and gmail"
HOMEPAGE="http://lieer.gaute.vetsj.com"
SRC_URI="https://github.com/gauteh/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3.0+"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
    >=net-mail/notmuch-0.25.0[${PYTHON_USEDEP}]
    dev-python/google-api-python-client[${PYTHON_USEDEP}]
    dev-python/oauth2client[${PYTHON_USEDEP}]
"

DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
"
