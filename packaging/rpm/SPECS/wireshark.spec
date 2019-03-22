# Note that this is NOT a relocatable package
# XXX is this still true? https://fedoraproject.org/wiki/Packaging:Cmake
# says that recent CMake versions take care of rpathification.

# To do:
# - Set version in version.h
# - Add bcond_with clang

%bcond_with	ninja
%bcond_with	ccache
%bcond_without	qt5
%bcond_with	lua
%bcond_with	mmdbresolve
%bcond_with	lz4_and_snappy
%bcond_with	c_ares
%bcond_with	spandsp
%bcond_with	bcg729
%bcond_with	libxml2
%bcond_with	nghttp2
%bcond_with	sdjournal
%bcond_with	guides


# Set at most one of these two:
# Note that setcap requires rpmbuild 4.7.0 or later.
%global setuid_dumpcap 0
%global setcap_dumpcap 1

# Set to 1 if you want a group called 'wireshark' which users must be a member
# of in order to run dumpcap.  Only used if setuid_dumpcap or setcap_dumpcap
# are set.
%global use_wireshark_group 1

%global package_version 3.1.0


Summary:	Wireshark is the world's foremost protocol analyzer
Name:		wireshark
Version:	3.1.0
Release:	1
License:	GPLv2+
Group:		Applications/Internet
Source:		https://www.wireshark.org/download/src/%{name}-%{package_version}.tar.xz
# Or this URL for automated builds:
#Source:	https://www.wireshark.org/download/automated/src/%%{name}-%%{package_version}.tar.xz
URL:		https://www.wireshark.org/
Packager:	Gerald Combs <gerald[AT]wireshark.org>

BuildRoot:	/tmp/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)

%if 0%{?rhel}
BuildRequires:	cmake3 >= 3.5
BuildRequires:  python34
%else
BuildRequires:	cmake >= 3.5
BuildRequires:  python3
%endif
BuildRequires:	gcc
BuildRequires:	perl
BuildRequires:	flex
BuildRequires:	bison
%if %{with guides}
# HTML guides
BuildRequires:	asciidoctor
%endif

BuildRequires:	glib2-devel >= 2.32.0
Requires:	glib2 >= 2.32.0
BuildRequires:	libpcap-devel
Requires:	libpcap
BuildRequires:	zlib-devel
Requires:	zlib
BuildRequires:	libgcrypt-devel
Requires:	libgcrypt

%if %{with lz4_and_snappy}
%if 0%{?suse_version}
BuildRequires:	liblz4-devel
Requires:	liblz4-1
BuildRequires:	snappy-devel
Requires:	libsnappy1
%else
BuildRequires:	lz4-devel
Requires:	lz4
BuildRequires:	snappy-devel
Requires:	snappy
%endif
%endif

%if %{with c_ares}
%if 0%{?suse_version}
# SUSE uses these package names (yes 2!):
BuildRequires:	libcares-devel
Requires:	libcares2
%else
# ... while Red Hat uses this one:
# (What other RPM-based distros do will have to be determined...)
BuildRequires:	c-ares-devel
Requires:	c-ares
%endif
%endif

%if %{with lua}
BuildRequires:	lua-devel < 5.3
Requires:	lua < 5.3
%endif

%if %{with nghttp2}
BuildRequires:	libnghttp2-devel
Requires:	libnghttp2
%endif

%if %{with sdjournal}
BuildRequires:	systemd-devel
%if 0%{?suse_version}
Requires:	libsystemd0
%else
Requires:	systemd-libs
%endif
%endif

# Uncomment these if you want to be sure you get them...
#BuildRequires:	krb5-devel
#BuildRequires:	libsmi-devel
#BuildRequires:	pcre-devel
#BuildRequires:	libselinux
#BuildRequires:	gnutls-devel
#BuildRequires:	libcap-devel

%if %{with mmdbresolve}
BuildRequires:	libmaxminddb-devel
Requires:	libmaxminddb
%endif

%if %{use_wireshark_group}
%if 0%{?suse_version}
# SUSE's groupadd is in this package:
Requires(pre):	pwdutils
%else
# ... while Red Hat's is in this one:
Requires(pre):	shadow-utils
%endif
%endif

%if %{setcap_dumpcap}
# Actually we require rpmbuild (the program) >= 4.7.0 but the package name
# where we can find it varies.  So we check the 'rpm' version because either
# rpmbuild is in that package (e.g., in older distros) or it's in the
# 'rpm-build' package which generally requires a matching version of 'rpm'.
#
# All of this is to save users the trouble of getting through an full compile
# only to have rpmbuild barf because it doesn't understand capabilities.
BuildRequires:	rpm >= 4.7.0
%endif

# NOTE: the below description has been copied to wireshark.appdata.xml (in the
# top-level directory).
%description
Wireshark allows you to examine protocol data stored in files or as it is
captured from wired or wireless (WiFi or Bluetooth) networks, USB devices,
and many other sources.  It supports dozens of protocol capture file formats
and understands more than a thousand protocols.

It has many powerful features including a rich display filter language
and the ability to reassemble multiple protocol packets in order to, for
example, view a complete TCP stream, save the contents of a file which was
transferred over HTTP or CIFS, or play back an RTP audio stream.

This package contains command-line utilities, plugins, and documentation for
Wireshark. A Qt graphical user interface is packaged separately.

%if %{with qt5}
%package	qt
Summary:	Wireshark's Qt-based GUI
Group:		Applications/Internet
Obsoletes:	wireshark-gnome wireshark-gtk
%description qt
This package contains the Qt Wireshark GUI and desktop integration files.

Requires:	%{name} = %{version}-%{release}
BuildRequires:	gcc-c++
%if 0%{?suse_version}
BuildRequires:	libQt5Core-devel
Requires:	libQt5Core5
BuildRequires:	libQt5Gui-devel
Requires:	libQt5Gui5
BuildRequires:	libQt5Widgets-devel
Requires:	libQt5Widgets5
BuildRequires:	libQt5PrintSupport-devel
Requires:	libQt5PrintSupport5
BuildRequires:	libqt5-qtmultimedia-devel
Requires:	libQt5Multimedia5
# Need this for SUSE's suse_update_desktop_file macro
BuildRequires:	update-desktop-files
%else
BuildRequires:	qt5-qtbase-devel
Requires:	qt5-qtbase
Requires:	qt5-qtbase-gui
BuildRequires:	qt5-qtmultimedia-devel
Requires:	qt5-qtmultimedia
%endif
Requires:	xdg-utils
Requires:	hicolor-icon-theme
BuildRequires:	desktop-file-utils
Requires(post):	desktop-file-utils
# Add this for more readable fonts on some distributions/versions
#Requires:	dejavu-sans-mono-fonts
%endif

%package	devel
Summary:	Development headers for Wireshark
Group:		Applications/Internet
Requires:	%{name} = %{version}-%{release}
%description devel
The wireshark-devel package contains the header and other files required for
development of Wireshark scripts and plugins.


%prep
%setup -q -n %{name}-%{package_version}

# SUSE has a wrong bindir for cmake. Set it to the right one.
%if 0%{?suse_version}
%define _bindir /usr/bin
%endif

%if 0%{?rhel}
cmake3 \
%else
%cmake \
%endif
%if %{with ccache}
  -DENABLE_CCACHE=ON \
%endif
  -DCMAKE_INSTALL_PREFIX=C:/Program Files (x86)/Wireshark \
%if %{with qt5}
  -DBUILD_wireshark=ON \
%else
  -DBUILD_wireshark=OFF \
%endif
%if %{with lua}
  -DENABLE_LUA=ON \
%else
  -DENABLE_LUA=OFF \
%endif
%if %{with mmdbresolve}
  -DBUILD_mmdbresolve=ON \
%else
  -DBUILD_mmdbresolve=OFF \
%endif
%if %{with lz4_and_snappy}
  -DENABLE_LZ4=ON \
  -DENABLE_SNAPPY=ON \
%else
  -DENABLE_LZ4=OFF \
  -DENABLE_SNAPPY=OFF \
%endif
%if %{with c_ares}
  -DENABLE_CARES=ON \
%else
  -DENABLE_CARES=OFF \
%endif
%if %{with spandsp}
  -DENABLE_SPANDSP=ON \
%else
  -DENABLE_SPANDSP=OFF \
%endif
%if %{with bcg729}
  -DENABLE_BCG729=ON \
%else
  -DENABLE_BCG729=OFF \
%endif
%if %{with libxml2}
  -DENABLE_LIBXML2=ON \
%else
  -DENABLE_LIBXML2=OFF \
%endif
%if %{with nghttp2}
  -DENABLE_NGHTTP2=ON \
%else
  -DENABLE_NGHTTP2=OFF \
%endif
%if %{with sdjournal}
  -DBUILD_sdjournal=ON \
%else
  -DBUILD_sdjournal=OFF \
%endif
  -DDISABLE_WERROR=ON \
%if %{with ninja}
  -G Ninja \
%endif

%if %{with ninja}
# Older RPM-based distributions used ninja-build in order to prevent a collision with
# the Ninja IRC client: https://bugzilla.redhat.com/show_bug.cgi?id=1166135
NINJA=$(type ninja >/dev/null 2>&1 && echo ninja || echo ninja-build)
$NINJA
%else
# Suggestion: put this in your ~/.rpmmacros (without the hash sign, of course):
# %_smp_mflags -j %(grep -c processor /proc/cpuinfo)
make %{?_smp_mflags}
%endif

%install
rm -rf $RPM_BUILD_ROOT
%if 0%{?suse_version}
cd build
%endif
%if %{with ninja}
NINJA=$(type ninja >/dev/null 2>&1 && echo ninja || echo ninja-build)
DESTDIR=$RPM_BUILD_ROOT $NINJA install
%if %{with guides}
DESTDIR=$RPM_BUILD_ROOT $NINJA install_guides
%endif
%else
make DESTDIR=$RPM_BUILD_ROOT install
%if %{with guides}
make DESTDIR=$RPM_BUILD_ROOT install_guides
%endif
%endif
%if 0%{?suse_version}
cd -
%endif

# If we're being installed in an unusual prefix tell the loader where
# to find our libraries.
%if "%{_prefix}" != "/usr"
	%define install_ld_so_conf 1
	mkdir -p $RPM_BUILD_ROOT/etc/ld.so.conf.d
	echo %{_libdir} > $RPM_BUILD_ROOT/etc/ld.so.conf.d/wireshark.conf
%endif

%if %{with qt5}
%if 0%{?suse_version}
# SUSE's packaging conventions
# (http://en.opensuse.org/openSUSE:Packaging_Conventions_RPM_Macros#.25suse_update_desktop_file)
# require this:
install -Dm 0644 %{buildroot}/usr/local/share/applications/wireshark.desktop %{buildroot}/usr/share/applications/wireshark.desktop
%suse_update_desktop_file %{name}
%else
# Fedora's packaging guidelines (https://fedoraproject.org/wiki/Packaging:Guidelines)
# require this (at least if desktop-file-install was not used to install it).
desktop-file-validate %{buildroot}%{_datadir}/applications/wireshark.desktop
%endif
%endif

%clean
rm -rf $RPM_BUILD_ROOT

%if %{use_wireshark_group}
%pre
getent group wireshark >/dev/null || groupadd -r wireshark
%endif

%post -p /sbin/ldconfig

%postun -p /sbin/ldconfig

%if %{with qt5}
%post qt
update-desktop-database %{_datadir}/applications &> /dev/null || :
update-mime-database %{_datadir}/mime &> /dev/null || :
touch --no-create %{_datadir}/icons/hicolor &>/dev/null || :

%postun qt
update-desktop-database %{_datadir}/applications &> /dev/null ||:
update-mime-database %{_datadir}/mime &> /dev/null || :
%endif

%files

%if 0%{?suse_version}
# Before packing, we need to restore the bindir to the wireshark one
%define _bindir /usr/local/bin
%endif

%defattr(-,root,root)
%doc AUTHORS COPYING ChangeLog INSTALL NEWS README*

# Include the User Guide:
%docdir %{_datadir}/doc/wireshark/
%{_datadir}/doc/wireshark/

# Don't pick up any of the wireshark (GUI) binaries here
%exclude %{_bindir}/wireshark*
%{_bindir}/*

# This generates a warning because dumpcap is listed twice. That's
# probably preferable to listing each program (and keeping the list up to
# date)...
%if %{use_wireshark_group} && %{setuid_dumpcap}
# Setuid but only executable by members of the 'wireshark' group
%attr(4750, root, wireshark) %{_bindir}/dumpcap
%else
%if %{use_wireshark_group} && %{setcap_dumpcap}
# Setcap but only executable by members of the 'wireshark' group
%attr(0750, root, wireshark) %caps(cap_net_raw,cap_net_admin=ep) %{_bindir}/dumpcap
%else
%if %{setuid_dumpcap}
# Setuid and executable by all
%attr(4755, root, root) %{_bindir}/dumpcap
%else
%if %{setcap_dumpcap}
# Setcap and executable by all
%attr(0755, root, root) %caps(cap_net_raw,cap_net_admin=ep) %{_bindir}/dumpcap
%else
# Executable by all but with no special permissions
%attr(0755, root, root) %{_bindir}/dumpcap
%endif
%endif
%endif
%endif

%{_libdir}/lib*.so*
# Don't pick up the cmake files here
%exclude %{_libdir}/wireshark/cmake
%{_libdir}/wireshark
# Don't pick up the wireshark (GUI) man page here
%exclude %{_mandir}/man1/wireshark.*
%{_mandir}/man1/*
%{_mandir}/man4/*
%{_datadir}/wireshark

%if 0%{?install_ld_so_conf}
/etc/ld.so.conf.d/wireshark.conf
%endif

%if %{with qt5}
%files qt
%defattr(-,root,root)
%{_datadir}/applications/wireshark.desktop
%if 0%{?suse_version}
/usr/share/applications/wireshark.desktop
%endif
%{_datadir}/appdata/wireshark.appdata.xml
%{_datadir}/icons/hicolor/*/apps/*
%{_datadir}/icons/hicolor/*/mimetypes/*
%{_datadir}/mime/packages/wireshark.xml
%{_bindir}/wireshark
%{_mandir}/man1/wireshark.*
%endif

%files devel
%{_includedir}/wireshark
%{_libdir}/wireshark/cmake
%{_libdir}/pkgconfig/wireshark.pc

%changelog
* Fri Sep 28 2018 Gerald Combs
- Add sdjournal

* Thu Sep 27 2018 Jeff Morriss
- Have the qt package obsolute the old gnome and gtk packages.  This allows
  clean upgrades to the Qt version.
- Set install prefix based on original cmake call's prefix.
- Update capitalization of SUSE.

* Wed Sep 26 2018 Jeff Morriss
- Put development-related files in a new -devel RPM.

* Mon Sep 24 2018 Jeff Morriss
- Allow using ccache to (greatly) speed up rebuilds.

* Mon Sep 24 2018 Jeff Morriss
- Make the (optional) maxminddb dependencies actually work.

* Wed Apr 11 2018 Gerald Combs
- Make documentation installation conditional.

* Tue Mar 20 2018 Gerald Combs
- Migrate from Autotools to CMake.
- Remove Qt4, GTK+ 2, and GTK+ 3 sections.
- Require flex, bison, and libgcrypt.
- Optionally build with Ninja.

* Sat Dec  2 2017 Jeff Morriss
- Include the User Guide (now installed by default by autotools).

* Wed Jul 26 2017 Pascal Quantin
- Added bcg729 (as an option, defaulting to not required).

* Tue Apr  4 2017 Ahmad Fatoum
- Added libxml2 (as an option, defaulting to required).

* Tue Dec 20 2016 Anders Broman
- Add with extcap (as an option, defaulting to yes).

* Mon Dec  5 2016 Jeff Morriss
- Add spandsp (as an option, defaulting to not required).

* Tue Oct 18 2016 Benoit Canet
- Add LZ4 and snappy compression support.

* Mon Aug 29 2016 Jeff Morriss
- Add libnghttp2 (as an option, defaulting to required).

* Wed Aug 17 2016 Jeff Morriss
- wireshark.pc is now installed with Wireshark, include it in the RPM.

* Mon May  9 2016 Jeff Morriss
- Make autoconf, automake, flex, and bison optional: most users (who aren't
  patching Wireshark) don't need them to build an RPM.

* Tue Nov 10 2015 Jeff Morriss
- Rename the gnome package to gtk: Wireshark uses Gtk+ but isn't part of GNOME.

* Mon Sep 14 2015 Jeff Morriss
- Follow ./configure's decision on whether to configure Lua or not rather than
  forcing it to be enabled (and thus failing on some distros which don't ship
  a compatible version of Lua any more).

* Sat Sep 12 2015 Jeffrey Smith
- Begin support for Qt5

* Thu Jan 22 2015 Jeff Morriss
- Add appdata file.

* Tue Jan 20 2015 Jeff Morriss
- Make the license tag more specific: Wireshark is GPLv2+.

* Mon Jan 12 2015 Jeff Morriss
- Modernize the (base package) %description.

* Wed Dec  3 2014 Jeff Morriss
- Don't run gtk-update-icon-cache when uninstalling the Qt package.  But do run
  it when installing the gnome package.
- Tell the loader where to find our libraries if we're being installed
  someplace other than /usr .
- Attempt to get RPMs working with a prefix other than /usr (now that the
  (free)desktop files are no longer always installed /usr).  Desktop
  integration doesn't work for prefixes other than "/usr" or "/usr/local".

* Fri Aug 29 2014 Gerald Combs
- The Qt UI is now the default. Update logic and prioritization to
  reflect this.

* Mon Aug 4 2014 Jeff Morriss
- Fix RPM builds with a prefix other than /usr: The location of
  update-alternatives does not depend on Wireshark's installation prefix:
  it's always in /usr/sbin/.

* Fri Aug  1 2014 Jeff Morriss
- Remove the old wireshark binary during RPM upgrades: this is needed because
  we now declare wireshark to be %ghost so it doesn't get overwritten during an
  upgrade (but in older RPMs it was the real program).

* Tue Jul  1 2014 Jeff Morriss
- Get rid of rpath when we're building RPMs: Fedora prohibits it, we don't
  need it, and it gets in the way some times.

* Tue Nov 26 2013 Jeff Morriss
- Overhaul options handling to pull in the UI choice from ./configure.
- Make it possible to not build the GNOME package.

* Tue Nov 12 2013 Jeff Morriss
- Add a qt package using 'alternatives' to allow the administrator to choose
  which one they actually use.

* Fri Sep 20 2013 Jeff Morriss
- If we're not using gtk3 add --with-gtk2 (since Wireshark now defaults to gtk3)

* Thu Mar 28 2013 Jeff Morriss
- Simplify check for rpmbuild's version.

* Fri Mar  8 2013 Jeff Morriss
- Put all icons in hicolor
- Use SuSE's desktop-update macro.
- Actually update MIME database when Wireshark's prefix is not /usr .

* Thu Mar  7 2013 Jeff Morriss
- List more build dependencies.
- Update to work on SuSE too: some of their package names are different.

* Wed Mar  6 2013 Gerald Combs
- Enable c-ares by default

* Thu Feb  7 2013 Jeff Morriss
- Overhaul to make this file more useful/up to date.  Many changes are based
  on Fedora's .spec file.  Changes include:
  - Create a separate wireshark-gnome package (like Red Hat).
  - Control some things with variables set at the top of the file.
    - Allow the user to configure how dumpcap is installed.
    - Allow the user to choose some options including GTK2 or GTK3.
  - Greatly expand the BuildRequires entries; get the minimum versions of some
    things from 'configure'.
  - Install freedesktop files for better (free)desktop integration.

* Thu Aug 10 2006 Joerg Mayer
- Starting with X.org 7.x X11R6 is being phased out. Install wireshark
  and manpage into the standard path.

* Mon Aug 01 2005 Gerald Combs
- Add a desktop file and icon for future use

- Take over the role of packager

- Update descriptions and source locations

* Thu Oct 28 2004 Joerg Mayer
- Add openssl requirement (heimdal and net-snmp are still automatic)

* Tue Jul 20 2004 Joerg Mayer
- Redo install and files section to actually work with normal builds

* Sat Feb 07 2004 Joerg Mayer
- in case there are shared libs: include them

* Tue Aug 24 1999 Gilbert Ramirez
- changed to ethereal.spec.in so that 'configure' can update
  the version automatically

* Tue Aug 03 1999 Gilbert Ramirez <gram@xiexie.org>
- updated to 0.7.0 and changed gtk+ requirement

* Sun Jan 03 1999 Gerald Combs <gerald@zing.org>
- updated to 0.5.1

* Fri Nov 20 1998 FastJack <fastjack@i-s-o.net>
- updated to 0.5.0

* Sun Nov 15 1998 FastJack <fastjack@i-s-o.net>
- created .spec file
