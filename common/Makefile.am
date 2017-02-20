themepurpleragedir	=	$(datadir)/themes/Booster-PURPLERAGE

ithemepurpleragedir	=	$(DESTDIR)$(themepurpleragedir)

install-exec-hook:

install-data-local:

if ENABLE_PURPLERAGE
	$(MKDIR_P) $(ithemepurpleragedir)
	cp -r $(srcdir)/PURPLERAGE/* $(ithemepurpleragedir)
endif # ENABLE_PURPLERAGE

EXTRA_DIST = $(srcdir)/PURPLERAGE
