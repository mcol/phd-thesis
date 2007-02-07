INPUT = thesis
CRUFT = *.aux *.bbl *.blg *.log *.toc

all: dvi

bib:
	bibtex $(INPUT)

dvi:
	latex $(INPUT).tex

ps: $(INPUT).dvi
	dvips -Ppdf $(INPUT).dvi -o

ps2: ps
	psnup -2 $(INPUT).ps th2.ps

pdf: ps
	ps2pdf $(INPUT).ps $(INPUT).pdf

tar:
	tar cvzhf $(INPUT).tar.gz .

clean:
	-rm -rf $(CRUFT)

cleanall: clean
	-rm -rf *.dvi *.ps *~
