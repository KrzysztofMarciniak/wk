PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin

.PHONY: all help check install uninstall

all: help

help:
	@printf '%s\n' 'make install   install wk into $(BINDIR)' 'make uninstall remove wk from $(BINDIR)' 'make check      check shell syntax'

check:
	sh -n wk

install: check
	install -d "$(DESTDIR)$(BINDIR)"
	install -m 755 wk "$(DESTDIR)$(BINDIR)/wk"

uninstall:
	rm -f "$(DESTDIR)$(BINDIR)/wk"
