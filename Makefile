include inc.mk

PROJECT := Popcorn

popcorn:
	mkdir popcorn

list:
	ls -la

file: popcorn
	touch popcorn/style.scss

print:
	@echo My project is called $(PROJECT).

	@echo $(INCLUDE_TEXT)

install:
	npm install -g sass

compile: popcorn/style.scss
	sass $< popcorn/style.css

clean: popcorn file
	rm -rf popcorn/
