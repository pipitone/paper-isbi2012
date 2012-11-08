RSCRIPT:=R

dist:paper.tex
	zip -r paper paper.tex references.bib IEEEbib.bst spconf.sty montage.png figure

paper-embedded.pdf: paper.tex references.bib IEEEbib.bst
	cp paper.tex paper-embedded.tex
	latex paper-embedded.tex
	bibtex paper-embedded
	latex paper-embedded.tex
	latex paper-embedded.tex 
	dvips -Ppdf -G0 -tletter paper-embedded.dvi 
	ps2pdf -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress paper-embedded.ps paper-embedded.pdf 

paper.pdf: paper.tex references.bib IEEEbib.bst
	pdflatex paper.tex
	bibtex paper.aux
	pdflatex paper.tex
	pdflatex paper.tex

%.tex: %.Rnw
	#R CMD Sweave $*.Rnw
	$(RSCRIPT) -e "library(knitr); knit(\"$*.Rnw\")" 

clean:
	rm -f *.aux *.log *.bbl *.blg paper.pdf
