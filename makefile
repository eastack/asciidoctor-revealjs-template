build : clean;
	$(info building reveal…)
	@yarn asciidoctor-revealjs src/*.adoc --destination-dir=out > /dev/null

clean :
	$(info cleaning reveal…)
	@rm -f out/*.html

watch :
	$(info watching change…)
	@find src/ | entr -s 'make' > /dev/null &

.PHONY: build
