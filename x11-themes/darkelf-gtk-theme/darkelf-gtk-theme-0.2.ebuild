# taken from gentoo portage tree
# updated manually by Simon the Sorcerer

EAPI=7

DESCRIPTION="A gtk-2/gtk-3/xfce4 theme for working in dark environments."
HOMEPAGE="http://homepages.uni-paderborn.de/neuron/gentoo/darkelf/"
SRC_URI="http://homepages.uni-paderborn.de/neuron/gentoo/darkelf/${P}.txz"

LICENSE="LGPL-2+"
SLOT="0"
KEYWORDS="amd64 ~ppc ~ppc64 ~x86"

RDEPEND="
	x11-themes/gtk-engines-adwaita
"

DEPEND="
	${RDEPEND}
"

S=${WORKDIR}/

src_install() {
	insinto /usr/share/themes/
	doins -r darkelf
}
