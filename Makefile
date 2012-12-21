ifeq ($(TARGET_OS),linux)
VIEWER="evince"
else
VIEWER="C:\Program Files (x86)\Foxit Software\Foxit Reader\Foxit Reader.exe"
endif

default: compile display clean

compile:
	pdflatex guide.tex

display:
	$(VIEWER) guide.pdf

clean:
	rm guide.pdf
	rm *.aux
	rm *.log
	rm *.lof
	