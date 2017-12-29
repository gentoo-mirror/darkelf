# created for ::darkelf overlay.
# by Simon the Sorcerer

EAPI=6

DESCRIPTION="darkelf-features for gentoo portage"
HOMEPAGE="http://homepages.uni-paderborn.de/neuron/darkelf/"
SRC_URI="http://homepages.uni-paderborn.de/neuron/gentoo/darkelf/darkelf-features-bashrc"

LICENSE="Artistic"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE=""
SLOT="0"

S="${WORKDIR}/"

pkg_postinst() {
	cp "$DISTDIR"/darkelf-features-bashrc /etc/portage/bashrc || die
	if ! grep -q "^#?DARKELF_FEATURES" /etc/portage/make.conf ; then
		echo '#DARKELF_FEATURES="postmerge_distclean"' >> /etc/portage/make.conf || die
	fi
	elog "To enable cleaning distfiles after every merged ebuild uncomment DARKELF_FEATURES=\"postmerge_distclean\" in /etc/portage/make.conf."
}
