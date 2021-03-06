UGLIFY ?= uglifyjs
DIST ?= releases
NPM ?= npm
VSN ?= debug
OUTPUT ?= $(DIST)/json-ptr-$(VSN).min.js

all: deps min

min:
	$(UGLIFY)	index.js \
		-o $(OUTPUT) \
		-r '$,require,exports,window,global' -m

deps:
	$(NPM) install

.PHONY: deps all