#!/bin/bash

if [ "$1" == "bash" ]; then
	docker run --rm \
	-e "JEKYLL_ENV=docker" \
  	-v "$PWD:/srv/jekyll" \
	-v "jekyll_bundle_cache:/usr/local/bundle" \
  	-p 4000:4000 \
  	-it jekyll/jekyll:3.8 \
  	bash
else
	docker run --rm \
	-e "JEKYLL_ENV=docker" \
  	-v "$PWD:/srv/jekyll" \
	-v "jekyll_bundle_cache:/usr/local/bundle" \
  	-p 4000:4000 \
  	-it jekyll/jekyll:3.8 \
  	jekyll serve \
	--config _config.yml,_config.docker.yml
fi