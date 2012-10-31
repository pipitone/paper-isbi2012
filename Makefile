RSCRIPT:=R

paper.pdf: paper.tex references.bib
	pdflatex paper.tex
	bibtex paper.aux
	pdflatex paper.tex
	pdflatex paper.tex

%.tex: %.Rnw
	#R CMD Sweave $*.Rnw
	$(RSCRIPT) -e "library(knitr); knit(\"$*.Rnw\")" 

clean:
	rm -f *.aux *.log *.bbl *.blg paper.pdf
