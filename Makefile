.PHONY: all help site publish start stop clean

all:: help

help::
	@echo
	@echo 'Makefile targets:'
	@echo
	@echo '    help	        - This help'
	@echo '    site         - Build the site in the site/ dir'
	@echo '    publish      - Publish the site to GitHub pages'
	@echo '    clean        - Remove generated files'
	@echo


site::
	cogweb build

publish::
	cogweb publish

start:: site
	cogweb start

clean::
	rm -fr site
