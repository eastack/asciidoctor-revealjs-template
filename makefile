.PHONY: build
build : clean; $(info building reveal…)
	@./node_modules/.bin/asciidoctor-revealjs index.adoc

.PHONY: clean
clean : $(info cleaning reveal…)
	@rm -f index.html

.PHONY: open
open : clean build; $(info opening reveal…)
	@xdg-open index.html
