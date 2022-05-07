MYBIB := $(shell [ -f ~/src/github.com/3tty0n/cv/my-bib.bib ] && echo "~/src/github.com/3tty0n/cv/my-bib.bib" || echo "../my-bib.bib")
build:
	cp $(MYBIB) index.bib
	bibtex2html -css vendor/solarized/solarized-dark.min.css index.bib

portfolio.html: portfolio.tex
	make4ht -l -c portfolio.cfg $<

clean:
	$(RM) index.html portfolio.html
