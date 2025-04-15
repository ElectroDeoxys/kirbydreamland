rom := kirbydreamland.gb

rom_obj := \
src/audio.o \
src/home.o \
src/main.o \
src/normal_mode.o \
src/extra_mode.o \
src/ram.o

kirbydreamland_obj := $(rom_obj:.o=.o)

### Build tools

ifeq (,$(shell which sha1sum))
SHA1 := shasum
else
SHA1 := sha1sum
endif

RGBDS ?=
RGBASM  ?= $(RGBDS)rgbasm
RGBFIX  ?= $(RGBDS)rgbfix
RGBGFX  ?= $(RGBDS)rgbgfx
RGBLINK ?= $(RGBDS)rgblink


### Build targets

.SUFFIXES:
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:
.PHONY: all kirbydreamland clean tidy compare tools

all: $(rom) compare
kirbydreamland: $(rom) compare

clean: tidy
	find src/gfx \( -iname '*.1bpp' -o -iname '*.2bpp' \) -delete

tidy:
	rm -f $(rom) $(rom_obj) $(rom:.gb=.map) $(rom:.gb=.sym) src/rgbdscheck.o
	$(MAKE) clean -C tools/

compare: $(rom)
	@$(SHA1) -c rom.sha1

tools:
	$(MAKE) -C tools/


RGBASMFLAGS = -P includes.asm -I src/ -Q 8 -Weverything
# Create a sym/map for debug purposes if `make` run with `DEBUG=1`
ifeq ($(DEBUG),1)
RGBASMFLAGS += -E
endif

src/rgbdscheck.o: src/rgbdscheck.asm
	$(RGBASM) -o $@ $<

# The dep rules have to be explicit or else missing files won't be reported.
# As a side effect, they're evaluated immediately instead of when the rule is invoked.
# It doesn't look like $(shell) can be deferred so there might not be a better way.
define DEP
$1: $2 $$(shell tools/scan_includes -s $2) | src/rgbdscheck.o
	$$(RGBASM) $$(RGBASMFLAGS) -o $$@ $$<
endef

# Build tools when building the rom.
# This has to happen before the rules are processed, since that's when scan_includes is run.
ifeq (,$(filter clean tidy tools,$(MAKECMDGOALS)))

$(info $(shell $(MAKE) -C tools))

# Dependencies for objects
$(foreach obj, $(rom_obj), $(eval $(call DEP,$(obj),$(obj:.o=.asm))))

endif


%.asm: ;


opts = -jv -l 0x01 -m MBC1 -p 0 -t "KIRBY DREAM LAND" -r 0

$(rom): $(rom_obj) src/layout.link
	$(RGBLINK) -d -m $(rom:.gb=.map) -n $(rom:.gb=.sym) -l src/layout.link -o $@ $(filter %.o,$^) -O baserom.gb
	$(RGBFIX) $(opts) $@


### Catch-all graphics rules

%.2bpp: %.png
	$(RGBGFX) $(rgbgfx) -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -o $@ $@)
