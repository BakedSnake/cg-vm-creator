PREFIX=/usr/local
INSTALL_DIR=$(PREFIX)/bin
CONFIG_PREFIX=$(HOME)/.config
CONFIG_DIR=$(CONFIG_PREFIX)/vm-creator

config:
	mkdir -p $(CONFIG_DIR)
	install -m 0644 vm-creator.conf $(CONFIG_DIR)

install:
	install -m 0755 vm-creator $(INSTALL_DIR)

clean:
	rm -f $(INSTALL_DIR)/vm-creator
