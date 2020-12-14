USER := $(shell id -u -n)
ifeq ($(USER),giuliafanti)
	USER_REMOTE := gfanti@
	OPEN := open
else ifeq ($(USER),someone)

else

endif

OPEN ?= $(shell command -v \
		/usr/bin/open \
		/Applications/Google\ Chrome.app/Contents/MacOS/Chrome \Chrome \
		/Applications/Safari.app/Contents/MacOS/Safari \
		firefox iceweasel \
		chrome chromium \
		opera \
		links links2 w3m  \
	| head -n1)

serve: _site
	bundle exec jekyll serve

publish:
	make publish_andrew

publish_%:
	# rsync --rsync-path='aklog -c ece.cmu.edu -k ECE.CMU.EDU; rsync' \
	# 	-avzh --progress \
	# 	--exclude '.git*' --exclude '*~' ./public_html/ \
	# 	$(USER_REMOTE)linux.$*.cmu.edu:/afs/ece/class/ece734/public_html/
	rsync --rsync-path='aklog ece.cmu.edu && rsync' \
		-avzh --progress \
		--exclude '.git*' --exclude '*~' ./_site/ \
		$(USER_REMOTE)unix.$*.cmu.edu:/afs/andrew.cmu.edu/usr5/gfanti/www/

public_html: public_html_src
	mkdir public_html &2> /dev/null
	cd public_html_src; make build

#-include Makefile.config
#
#SERVER ?= linux.ece.cmu.edu
#
#serve:
#	open public_html/index.html; true
#	cd public_html_src; make serve
#
#publish: public_html
#	rsync -e ssh -avzh --progress --exclude '.git*' --exclude '*~' ./public_html/ \
#	$(SERVER):/afs/ece/class/ece734/public_html/

clean:
	rm -Rf public_html; true
