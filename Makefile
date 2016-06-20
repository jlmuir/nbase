# will not be supported: chio db mt 

#PROJECTS = awk bdes cksum \
  cleantags compatlib compress csh \
  db deroff df doc \
  ksh mk pax ps rcmd rcp \
  sh sync

PROJECTS  =	apply banner basename cat chmod cmp col colrm comm cp csplit \
  ctags cut dd dirname \
  domainname echo \
  ed env error \
  expand expr false hostname kill \
  ln ls mkdir mv pwd rm rmdir sleep stty test

MKC_CHECK_HEADERS = tzfile.h

.include <mkc.configure.mk>

.if ${HAVE_HEADER.tzfile_h:U} == 1
PROJECTS += cal calendar
.endif

LIBDEPS   =	${PROJECTS:S/^/compatlib:/}

MKC_REQD  =	0.29.1
COMPATLIB =	compatlib

.include <mkc.mk>
