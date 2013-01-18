UNAME= $(shell uname)
LATEX= pdflatex
BIBTEX= bibtex
.SUFFIXES: .pdf .tex .aux

DOCS= guide.pdf
TEX= guide.tex

ifeq ($(UNAME),Linux)
VIEWER="evince"
else ifeq ($(UNAME),Darwin)
VIEWER="open"
else 
VIEWER="C:\Program Files (x86)\Foxit Software\Foxit Reader\Foxit Reader.exe"
endif

all: $(DOCS)

$(DOCS): $(TEX)

.tex.pdf:
	$(LATEX) $<
	#$(BIBTEX) $*
	$(LATEX) $<
	echo "----- only worry about warnings after this line -----"
	$(LATEX) $<

display:
	$(VIEWER) $(DOCS)

clean:
	rm -f $(DOCS)
	make clear

clear:
	rm -f *.aux *.log *.toc *.dvi *.bbl *.blg *.lot *.lof *.out *.brf *.lol *~
