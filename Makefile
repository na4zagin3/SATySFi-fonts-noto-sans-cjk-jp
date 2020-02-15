  
PACKAGE_NAME=fonts-noto-sans-cjk-jp

.PHONY: all
.PHONY: doc

all:
	:

doc: doc-fonts-noto-sans-cjk-jp.pdf

doc-fonts-noto-sans-cjk-jp.pdf: doc-$(PACKAGE_NAME).saty satysfi-$(PACKAGE_NAME).opam fonts.satysfi-hash Satyristes
	opam pin add satysfi-$(PACKAGE_NAME).opam "file://$(PWD)" -y
	satyrographos opam build -name $(PACKAGE_NAME)-doc