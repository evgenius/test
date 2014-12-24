TESTS = test/*.js
REPORTER = spec
MOCHA = ./node_modules/mocha/bin/mocha

test:
	@NODE_ENV=test $(MOCHA) \
		--require should \
		--reporter $(REPORTER) \
		--timeout 100 \
		--growl \
		$(TESTS)

.PHONY: test
