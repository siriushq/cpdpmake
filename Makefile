.POSIX:
.PHONY: clean

OBJS = \
	source/check.o \
	source/input.o \
	source/macro.o \
	source/main.o \
	source/make.o \
	source/modtime.o \
	source/rules.o \
	source/target.o \
	source/utils.o

make: $(OBJS)
	$(CC) $(LDFLAGS) -o cpdpmake.com $(OBJS)

$(OBJS): source/make.h

clean:
	rm -f $(OBJS) cpdpmake.com