#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr

PATH_XMONAD_CINNAMON = $(PREFIX)/bin/xmonad-cinnamon
PATH_XMONAD_CINNAMON_SESSION_BIN = $(PREFIX)/bin/cinnamon-session-xmonad
PATH_XMONAD_CINNAMON_DESKTOP = $(PREFIX)/share/applications/xmonad-cinnamon.desktop
PATH_XMONAD_CINNAMON_SESSION = $(PREFIX)/share/cinnamon-session/sessions/xmonad-cinnamon.session
PATH_XMONAD_CINNAMON_XSESSION = $(PREFIX)/share/xsessions/xmonad-cinnamon.desktop

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/xmonad-cinnamon-xsession.desktop $(PATH_XMONAD_CINNAMON_XSESSION)
	$(INSTALL) -m0644 -D session/xmonad-cinnamon.desktop $(PATH_XMONAD_CINNAMON_DESKTOP)
	$(INSTALL) -m0644 -D session/xmonad-cinnamon.session $(PATH_XMONAD_CINNAMON_SESSION)
	$(INSTALL) -m0755 -D session/cinnamon-session-xmonad $(PATH_XMONAD_CINNAMON_SESSION_BIN)
	$(INSTALL) -m0755 -D session/xmonad-cinnamon $(PATH_XMONAD_CINNAMON)


uninstall:
	rm -f $(PATH_XMONAD_CINNAMON)
	rm -f $(PATH_XMONAD_CINNAMON_DESKTOP)
	rm -f $(PATH_XMONAD_CINNAMON_SESSION)
	rm -f $(PATH_XMONAD_CINNAMON_SESSION_BIN)
	rm -f $(PATH_XMONAD_CINNAMON_XSESSION)


.PHONY: all install uninstall
