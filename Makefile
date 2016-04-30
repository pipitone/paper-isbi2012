RSCRIPT:=R

paper.pdf: paper.Rmd references.bib
	$(RSCRIPT) -e "library(rmarkdown); render('paper.Rmd')" 

clean:
	rm -f *.aux *.log *.bbl *.blg paper.pdf paper.tex
