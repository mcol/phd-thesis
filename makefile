INPUT = thesis
CRUFT = *.aux *.bbl *.blg *.log *.toc

all: dvi

dvi:
	latex $(INPUT).tex

ps: $(INPUT).dvi
	dvips $(INPUT).dvi -o

ps2: ps
	psnup -2 $(INPUT).ps th2.ps

clean:
	-rm $(CRUFT)

cleanall: clean
	-rm *.dvi *.ps