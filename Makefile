index.html: index.bib
	bibtex2html -css vendor/solarized/solarized-dark.min.css $<

clean:
	$(RM) index.html
