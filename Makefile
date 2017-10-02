PORT=7655

serve:
		@echo "Serving at http://localhost:$(PORT)"
		@python -m SimpleHTTPServer "$(PORT)" >/dev/null

publish:
	git push origin master
	git push origin master:gh-pages

publish-to-ipfs:
	mkdir -p build
	cp -r static build/.
	cp index.html build/.
	ipfs add -q -r build | tail -n1
