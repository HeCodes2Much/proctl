include config.mk

all:
	@echo Run \'make install\' to install pkmgr.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	@sed "s/VERSION/$(VERSION)/g" < pkmgr.1 > $(DESTDIR)$(MANPREFIX)/man1/pkmgr.1
	@cp -p pkmgr $(DESTDIR)$(PREFIX)/bin/pkmgr
	@chmod 644 $(DESTDIR)$(MANPREFIX)/man1/pkmgr.1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/pkmgr

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/pkmgr
	@rm -rf $(DESTDIR)$(MANPREFIX)/man1/pkmgr.1*
