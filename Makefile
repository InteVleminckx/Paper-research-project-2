MAIN = uantwerpenbamathesis

all:
	pdflatex $(MAIN).tex
	bibtex $(MAIN) || true
	pdflatex $(MAIN).tex
	pdflatex $(MAIN).tex

clean:
	rm -rf $(MAIN).aux $(MAIN).out $(MAIN).log $(MAIN).toc 

