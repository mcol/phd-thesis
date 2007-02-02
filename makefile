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

clean:
	-rm $(CRUFT)

cleanall: clean
	-rm *.dvi *.ps
