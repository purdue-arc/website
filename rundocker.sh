#!/bin/bash

if [ "$1" == "bash" ]; then
	docker run --rm \
  	--volume="$PWD:/srv/jekyll" \
  	-p 4000:4000 \
  	-it jekyll/jekyll \
  	bash
else
	docker run --rm \
  	--volume="$PWD:/srv/jekyll" \
  	-p 4000:4000 \
  	-it jekyll/jekyll \
  	jekyll serve
fi
