serve:
	docker run --rm \
		-v ${CURDIR}:/srv/jekyll \
		-p 4000:4000 \
		jekyll/jekyll:4 \
		jekyll serve
