themenvidiadir	=	$(datadir)/themes/Booster-Nvidia
themehotroddir	=	$(datadir)/themes/Booster-HotRod

ithemenvidiadir	=	$(DESTDIR)$(themenvidiadir)
ithemehotroddir	=	$(DESTDIR)$(themehotroddir)

install-exec-hook:

install-data-local:

if ENABLE_NVIDIA
	$(MKDIR_P) $(ithemenvidiadir)
	cp $(srcdir)/index.theme-nvidia $(ithemenvidiadir)/index.theme

	$(MKDIR_P) $(ithemenvidiadir)/gnome-shell

	cd $(srcdir)/gnome-shell/3.22 && cp -R \
		assets-nvidia \
		$(ithemenvidiadir)/gnome-shell/assets

	cd $(srcdir)/gnome-shell/3.22 && cp -R \
		gnome-shell-nvidia.css \
		$(ithemenvidiadir)/gnome-shell/gnome-shell.css

	$(MKDIR_P) $(ithemenvidiadir)/gtk-2.0

	cd $(srcdir)/gtk-2.0 && cp -R \
		menubar-toolbar \
		*.rc \
		$(ithemenvidiadir)/gtk-2.0

	cd $(srcdir)/gtk-2.0 && cp -R \
		assets-nvidia \
		$(ithemenvidiadir)/gtk-2.0/assets

	cd $(srcdir)/gtk-2.0 && cp -R \
		gtkrc-nvidia \
		$(ithemenvidiadir)/gtk-2.0/gtkrc

	$(MKDIR_P) $(ithemenvidiadir)/gtk-3.0

	cd $(srcdir)/gtk-3.0/3.22 && cp -R \
		assets-nvidia \
		$(ithemenvidiadir)/gtk-3.0/assets

	cd $(srcdir)/gtk-3.0/3.22 && cp -R \
		gtk-nvidia.css \
		$(ithemenvidiadir)/gtk-3.0/gtk.css
endif # ENABLE_NVIDIA

if ENABLE_HOTROD
	$(MKDIR_P) $(ithemehotroddir)
	cp $(srcdir)/index.theme-hotrod $(ithemehotroddir)/index.theme

	$(MKDIR_P) $(ithemehotroddir)/gnome-shell

	cd $(srcdir)/gnome-shell/3.22 && cp -R \
		assets-hotrod \
		$(ithemehotroddir)/gnome-shell/assets

	cd $(srcdir)/gnome-shell/3.22 && cp -R \
		gnome-shell-hotrod.css \
		$(ithemehotroddir)/gnome-shell/gnome-shell.css

	$(MKDIR_P) $(ithemehotroddir)/gtk-2.0

	cd $(srcdir)/gtk-2.0 && cp -R \
		menubar-toolbar \
		*.rc \
		$(ithemehotroddir)/gtk-2.0

	cd $(srcdir)/gtk-2.0 && cp -R \
		assets-hotrod \
		$(ithemehotroddir)/gtk-2.0/assets

	cd $(srcdir)/gtk-2.0 && cp -R \
		gtkrc-hotrod \
		$(ithemehotroddir)/gtk-2.0/gtkrc

	$(MKDIR_P) $(ithemehotroddir)/gtk-3.0

	cd $(srcdir)/gtk-3.0/3.22 && cp -R \
		assets-hotrod \
		$(ithemehotroddir)/gtk-3.0/assets

	cd $(srcdir)/gtk-3.0/3.22 && cp -R \
		gtk-hotrod.css \
		$(ithemehotroddir)/gtk-3.0/gtk.css
endif # ENABLE_HOTROD

uninstall-local:

if ENABLE_NVIDIA
	rm -rf $(ithemenvidiadir)
endif # ENABLE_NVIDIA

if ENABLE_HOTROD
	rm -rf $(ithemehotroddir)
endif # ENABLE_HOTROD

EXTRA_DIST = $(srcdir)/gnome-shell \
			$(srcdir)/gtk-2.0 \
			$(srcdir)/gtk-3.0 \
			$(srcdir)/index.theme-hotrod \
			$(srcdir)/index.theme-nvidia
