# Contributor: James Kirby <james.kirby@atlascity.io>
# Maintainer: James Kirby <james.kirby@atlascity.io>
pkgname=accore-installer
pkgver=0.0.1
pkgrel=1
pkgdesc="AC Core Installer"
url="http://atlascity.io"
arch="noarch"
license="MIT"
makedepends=""
depends=""
install=""
subpackages=""
replaces=""
source="acinstaller"

package() {
    install -D -m755 "$srcdir"/acinstaller "$pkgdir"/etc/init.d/acinstaller
}
