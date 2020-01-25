EMACS ?= emacs
SANDBOX_DIR ?= ./sandbox

deps:
	@mkdir -p "$(SANDBOX_DIR)"
	./makem.sh -vv -S "$(SANDBOX_DIR)" --install-deps --install-linters

test:
	@echo "Using $(shell which $(EMACS))..."
	./makem.sh -vv -S "$(SANDBOX_DIR)" test

lint:
	./makem.sh -vv -S "$(SANDBOX_DIR)" lint

clean:
	rm -f -- *.elc **/*.elc *-autoloads.el **/*-autoloads.el *\~ **/*\~

.PHONY: deps test lint clean
