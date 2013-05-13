
build: components bootstrap-modal.js bootstrap-modal.css
	@component build --dev

bootstrap-modal.js:
	cp node_modules/bootstrap/js/bootstrap-modal.js bootstrap-modal.js

bootstrap-modal.css: bootstrap-modal.less
	node_modules/.bin/recess bootstrap-modal.less --compile > bootstrap-modal.css

components: component.json
	@component install --dev

clean:
	rm -fr build components bootstrap-modal.js bootstrap-modal.css

.PHONY: clean
