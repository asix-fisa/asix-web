.PHONY: serve build clean

serve:
	zensical serve

build:
	zensical build --clean

publish: build
	ghp-import -n -p -b pages site

clean:
	rm -rf site