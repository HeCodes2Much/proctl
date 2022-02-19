include config.mk

all:
	@echo Run \'make install\' to install proctl.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	@sed "s/VERSION/$(VERSION)/g" < proctl.1 > $(DESTDIR)$(MANPREFIX)/man1/proctl.1
	@cp -p proctl $(DESTDIR)$(PREFIX)/bin/proctl
	@chmod 644 $(DESTDIR)$(MANPREFIX)/man1/proctl.1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/proctl

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/proctl
	@rm -rf $(DESTDIR)$(MANPREFIX)/man1/proctl.1*
