PREFIX ?= /usr
PROGRAM = qf
OBJS = $(subst .c,.o,$(wildcard *.c))

all: $(PROGRAM)

$(PROGRAM): $(OBJS)

install: $(PROGRAM)
	mkdir -p $(PREFIX)/bin
	install $(PROGRAM) $(PREFIX)/bin

uninstall:
	rm -f $(PREFIX)/bin/$(PROGRAM)

$(OBJS): Makefile
$(PROGRAM).o: $(wildcard *.h)

.PHONY: all clean install uninstall
clean:
	rm -f qf *.o
