PORT=7655

serve:
		@echo "Serving at http://localhost:$(PORT)"
		@python -m SimpleHTTPServer "$(PORT)" >/dev/null
