.PHONY: dbuild-cryptos-acinstaller-noarch
dbuild-cryptos-acinstaller-noarch:
	docker run \
		-e CARCH=noarch \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		cryptosregistry.azurecr.io/docker-build:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -r -c"

.PHONY: dbuild-cryptos-acinstaller-x8664
dbuild-cryptos-acinstaller-x8664:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		cryptosregistry.azurecr.io/docker-build:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -r -c"

.PHONY: dbuild-cryptos-acinstaller-armhf
dbuild-cryptos-acinstaller-armhf:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		cryptosregistry.azurecr.io/docker-build:armhf \
		sh -c "cd cryptos/src && abuild checksum && abuild -r -c"

.PHONY: dbuild-cryptos-acinstaller-aarch64
dbuild-cryptos-acinstaller-aarch64:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		cryptosregistry.azurecr.io/docker-build:aarch64 \
		sh -c "cd cryptos/src && abuild checksum && abuild -r -c"