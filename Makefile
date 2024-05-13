PREFIX = /usr
MANDIR = $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install SysFetch.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p sysfetch $(DESTDIR)$(PREFIX)/bin/sysfetch
	@cp -p sysfetch.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/sysfetch

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/sysfetch
	@rm -rf $(DESTDIR)$(MANDIR)/man1/sysfetch.1*
