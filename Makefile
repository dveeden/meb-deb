VERSION=3.11.1
OS=ubuntu12.04

.PHONY: package

package:
	fpm -n meb -v $(VERSION) --vendor Oracle --license Proprietary \
        --url https://www.mysql.com/products/enterprise/backup.html \
        --category utils --maintainer "Daniël van Eeden <meb@myname.nl>" \
        --description "Backup and restore tool for MySQL" \
        --after-install after-install.sh \
        --prefix=/opt/mysql -s tar -t deb meb-$(VERSION)-$(OS)-x86-64bit.tar.gz

clean:
	rm -f meb_*_*.deb
