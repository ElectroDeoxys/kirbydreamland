roms := \
	kirbydreamland.gb \
	kirbydreamland_jp.gb \
	kirbydreamland_jp11.gb

rom_obj := \
src/audio.o \
src/gfx.o \
src/home.o \
src/main.o \
src/normal_mode.o \
src/extra_mode.o \
src/ram.o

kirbydreamland_obj      := $(rom_obj:.o=.o)
kirbydreamland_jp_obj   := $(rom_obj:.o=_jp.o)
kirbydreamland_jp11_obj := $(rom_obj:.o=_jp11.o)

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
.PHONY: all kirbydreamland kirbydreamland_jp clean tidy compare tools
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:

all: kirbydreamland
kirbydreamland:      kirbydreamland.gb
kirbydreamland_jp:   kirbydreamland_jp.gb
kirbydreamland_jp11: kirbydreamland_jp11.gb

clean: tidy
	find src/gfx \( -iname '*.1bpp' -o -iname '*.2bpp' \) -delete
	find src/ -iname '*overlay.bin' -delete

tidy:
	$(RM) $(roms) \
	      $(roms:.gb=.sym) \
	      $(roms:.gb=.map) \
	      $(kirbydreamland_obj) \
	      $(kirbydreamland_jp_obj) \
	      $(kirbydreamland_jp11_obj) \
	      src/rgbdscheck.o
	$(MAKE) clean -C tools/

compare: $(roms)
	@$(SHA1) -c roms.sha1

tools:
	$(MAKE) -C tools/


RGBASMFLAGS = -P includes.asm -I src/ -Q 8 -Weverything
# Create a sym/map for debug purposes if `make` run with `DEBUG=1`
ifeq ($(DEBUG),1)
RGBASMFLAGS += -E
endif

$(kirbydreamland_obj):      RGBASMFLAGS +=
$(kirbydreamland_jp_obj):   RGBASMFLAGS += -D _KDL_JP
$(kirbydreamland_jp11_obj): RGBASMFLAGS += -D _KDL_JP11

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
$(foreach obj, $(kirbydreamland_obj), $(eval $(call DEP,$(obj),$(obj:.o=.asm))))
$(foreach obj, $(kirbydreamland_jp_obj), $(eval $(call DEP,$(obj),$(obj:_jp.o=.asm))))
$(foreach obj, $(kirbydreamland_jp11_obj), $(eval $(call DEP,$(obj),$(obj:_jp11.o=.asm))))

endif


%.asm: ;


kirbydreamland_opts      = -jv -l 0x01 -m MBC1 -p 0 -t "KIRBY DREAM LAND" -r 0 -n 0
kirbydreamland_jp_opts   = -v  -l 0x01 -m MBC1 -p 0 -t "HOSHINOKA-BI"     -r 0 -n 0
kirbydreamland_jp11_opts = -v  -l 0x01 -m MBC1 -p 0 -t "HOSHINOKA-BI"     -r 0 -n 1

%.gb: $$(%_obj) src/layout.link src/%_overlay.bin
	$(RGBLINK) -d -m $*.map -n $*.sym -l src/layout.link -o $@ $(filter %.o,$^) -O src/$*_overlay.bin
	$(RGBFIX) $($*_opts) $@


### Catch-all graphics rules

%.2bpp: %.png
	$(RGBGFX) $(rgbgfx) -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -o $@ $@)

%kirbydreamland_overlay.bin:
	tools/overlay $(tools/overlay) -m ue $@

%kirbydreamland_jp_overlay.bin:
	tools/overlay $(tools/overlay) -m j10 $@

%kirbydreamland_jp11_overlay.bin:
	tools/overlay $(tools/overlay) -m j11 $@
