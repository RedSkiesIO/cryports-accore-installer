# Contributor: James Kirby <james.kirby@atlascity.io>
# Maintainer: James Kirby <james.kirby@atlascity.io>
pkgname=accore-installer
pkgver=0.0.1
pkgrel=1
pkgdesc="AC Core Installer"
url="http://atlascity.io"
arch="all"
license="MIT"
makedepends=""
depends=""
install="$pkgname.post-install"
subpackages=""
replaces=""

package() {
	install -D -m755 "$srcdir"/acinstaller.initd "$pkgdir"/etc/init.d/acinstaller
    rc-update add helloworld default
}