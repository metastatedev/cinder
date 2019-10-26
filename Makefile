all: setup build test

setup:
	stack build --only-dependencies

build:
	stack build --copy-bins --fast

schema: build
	stack exec -- cinder schema > schema.json

format:
	find . -path ./.stack-work -prune -o -type f -name "*.hs" -exec ormolu --mode inplace {} \;

test:
	stack test --fast

repl:
	stack ghci cinder

clean:
	stack clean

.PHONY: all setup build schema format test repl clean
