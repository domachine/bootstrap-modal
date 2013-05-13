
build: components bootstrap-modal.js
	@component build --dev

bootstrap-modal.js:
	cp node_modules/bootstrap/js/bootstrap-modal.js bootstrap-modal.js

components: component.json
	@component install --dev

clean:
	rm -fr build components

.PHONY: clean
