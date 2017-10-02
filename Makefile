PORT=7655

serve:
		@echo "Serving at http://localhost:$(PORT)"
		@python -m SimpleHTTPServer "$(PORT)" >/dev/null

publish:
	git push origin master:gh-pages
