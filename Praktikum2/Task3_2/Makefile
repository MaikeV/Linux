NAME = linux-20
TEX = pdflatex -$(OUT)
BIB = bibtex -$(OUT)


all: $(NAME).pdf
.PHONY: all

clean:
	rm *.bbl *.aux *.blg *.log *.pdf *.lof *.lot *.lot *.toc *.out *.dvi *.fls *.fdb_latexmk
	
comp:
	pdflatex $(NAME)

$(NAME).pdf: $(NAME).tex $(NAME).bib
	$(MAKE) comp
	bibtex $(NAME)
	$(MAKE) comp
	if grep -q 'LaTeX Warning: There were undefined references.' $(NAME).log; \
	then $(MAKE) comp; \
	fi

