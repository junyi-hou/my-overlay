# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit font

DESCRIPTION="Slender typeface for code, from code"
HOMEPAGE="https://be5invis.github.io/Iosevka/"
SRC_URI="
    variants_ss01? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/${PN}-ss01-${PV}.zip )
    variants_ss02? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/${PN}-ss02-${PV}.zip )
    variants_ss03? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/${PN}-ss03-${PV}.zip )
    variants_ss04? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/${PN}-ss04-${PV}.zip )
    variants_ss05? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/${PN}-ss05-${PV}.zip )
    variants_ss06? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/${PN}-ss06-${PV}.zip )
    variants_ss07? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/${PN}-ss07-${PV}.zip )
    variants_ss08? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/${PN}-ss08-${PV}.zip )
    variants_ss09? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/${PN}-ss09-${PV}.zip )
    variants_ss10? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/${PN}-ss10-${PV}.zip )
    variants_ss11? ( https://github.com/be5invis/${PN}/releases/download/v${PV}/${PN}-ss11-${PV}.zip )
"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc64 ~x86"
IUSE="
     variants_ss01
     variants_ss02
     variants_ss03
     variants_ss04
     variants_ss05
     variants_ss06
     variants_ss07
     variants_ss08
     variants_ss09
     variants_ss10
     variants_ss11
"

DEPEND="app-arch/unzip"

S=${WORKDIR}
FONT_S="${S}/ttf"
FONT_SUFFIX="ttf"
