
index.html: index.bib
	bibtex2html -css vendor/solarized/solarized-dark.min.css $<

index.bib:
	cp ~/src/github.com/3tty0n/cv/my-bib.bib index.bib

clean:
	$(RM) index.html
