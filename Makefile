TARGET   = app

CC       = gcc
CFLAGS   = -std=c99 -Wall -I.

LINKER   = gcc
LFLAGS   = -Wall -I. -lm

SRCDIR   = src
OBJDIR   = obj
BINDIR   = bin

DIRS=$(OBJDIR) $(BINDIR)

SOURCES  := $(wildcard $(SRCDIR)/*.c)
INCLUDES := $(wildcard $(SRCDIR)/*.h)
OBJECTS  := $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)
rm       = rm -f

.PHONY: clean

$(BINDIR)/$(TARGET): $(OBJECTS)
	@$(LINKER) $(OBJECTS) $(LFLAGS) -o $@
	@echo "Linking complete!"

$(OBJECTS): $(OBJDIR)/%.o : $(SRCDIR)/%.c
	@$(CC) $(CFLAGS) -c $< -o $@
	@echo "Compiled "$<" successfully!"

run: $(BINDIR)/$(TARGET)
	@$(BINDIR)/$(TARGET)

clean:
	@$(rm) $(OBJECTS)
	@$(rm) $(BINDIR)/$(TARGET)
	@echo "Cleanup complete!"

$(shell mkdir -p $(DIRS))