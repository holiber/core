
LESS_FILES = $(wildcard *.less)

build: components core.css
	@component build --dev

components: component.json
	@component install --dev

core.css: $(LESS_FILES)
	@lessc core.less >core.css

clean:
	rm -fr build components template.js

.PHONY: clean
