PROG =		m4
CPPFLAGS +=	-DEXTENDED -I${.CURDIR}/lib
SRCS =	parser.y tokenizer.l eval.c expr.c look.c main.c misc.c gnum4.c trace.c
.PATH: ${.CURDIR}/lib
SRCS +=	ohash_create_entry.c ohash_delete.c ohash_do.c ohash_entries.c \
	ohash_enum.c ohash_init.c ohash_int.h ohash_interval.c \
	ohash_lookup_interval.c ohash_lookup_memory.c ohash_qlookup.c \
	ohash_qlookupi.c strtonum.c
YHEADER =	1
#.if (${HOSTPROG:U} == "")
#DPADD+=		${LIBUTIL} ${LIBL}
#LDADD+=		-lutil -ll
#.endif

tokenizer.o: parser.h

CLEANFILES += parser.c parser.h tokenizer.o

.include "../mk/addlinks.mk"
