PROJECT := Popcorn

popcorn:
	mkdir popcorn

list:
	ls -la

file: popcorn
	touch popcorn/style.scss

print:
	@echo My project is called $(PROJECT).

install:
	npm install -g sass

compile: file install
	sass popcorn/style.scss popcorn/style.css

clean: popcorn file
	rm -rf popcorn/
