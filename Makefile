HHFG_SKYSCRAPER_AD_PNG = hhfg-ad.svg.png

all: $(HHFG_SKYSCRAPER_AD_PNG)

$(HHFG_SKYSCRAPER_AD_PNG): hhfg-ad.svg
	inkscape --export-png=$@ --export-width=160 --export-height=600 $<
	optipng -o7 $@

upload: all
	rsync --progress -v -a --inplace human-hacking-field-guide-logo.svg hhfg-ad.svg hhfg-ad.svg.png $(__HOMEPAGE_REMOTE_PATH)/hhfg-graphics-demo/
