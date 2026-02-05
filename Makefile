.POSIX:
.PHONY: clean

OBJS = \
	check.o \
	input.o \
	macro.o \
	main.o \
	make.o \
	modtime.o \
	rules.o \
	target.o \
	utils.o

make: $(OBJS)
	$(CC) $(LDFLAGS) -o cpdpmake.com $(OBJS)

$(OBJS): make.h

clean:
	rm -f $(OBJS) make