all: setup build test

setup:
	stack build --only-dependencies

build:
	stack build --copy-bins --fast

format:
	find . -path ./.stack-work -prune -o -type f -name "*.hs" -exec ormolu --mode inplace {} \;

test:
	stack test --fast

repl:
	stack ghci cinder

clean:
	stack clean

.PHONY: all setup build format test repl clean
