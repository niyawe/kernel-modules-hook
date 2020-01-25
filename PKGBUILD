# Maintainer: Niklas Yann Wettengel <aur@niyawe.de>
pkgname=kernel-modules-hook
pkgver=0.1
pkgrel=0
pkgdesc="Keeps your system fully functional after a kernel upgrade"
arch=('any')
url="https://github.com/niyawe/kernel-modules-hook"
license=('UNLICENSE')
source=('kernel-modules-backup-pre.hook'
    'kernel-modules-backup-pre.sh'
    'kernel-modules-backup-post.hook'
    'kernel-modules-backup-post.sh')
sha256sums=('e8005cc0b808698cf1fa1ff4676299cea49d15e802c6fac992895ea82f46fdde'
    '34f080222984b02c7a233055c5079259a5be032d9e761f9678c09c427b1991a8'
    'f1350d6acae2c636d33097ea1f82ad159c2da474e16260ad51cd668415de707e'
    '54b6dfcacfc0ab0cc44273c67943fe72613b03b751fe34015638aeb5df977c03')

package() {
    install -Dm644 'kernel-modules-backup-pre.hook' "${pkgdir}/usr/share/libalpm/hooks/kernel-modules-backup-pre.hook"
    install -Dm644 'kernel-modules-backup-post.hook' "${pkgdir}/usr/share/libalpm/hooks/kernel-modules-backup-post.hook"
    install -Dm755 'kernel-modules-backup-pre.sh' "${pkgdir}/usr/share/kernel-backup-hooks/kernel-modules-backup-pre.sh"
    install -Dm755 'kernel-modules-backup-post.sh' "${pkgdir}/usr/share/kernel-backup-hooks/kernel-modules-backup-post.sh"
}
