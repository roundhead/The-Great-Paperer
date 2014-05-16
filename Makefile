all : Rules.pdf

Rules.pdf : Rules.tex
	xelatex Rules.tex
	make clean


Rules.tex : Rules.md Rules-templates.tex
	pandoc -s Rules.md -o Rules.tex --chapters --latex-engine=xelatex --template=Rules-templates.tex

clean : 
	rm -f *.log *.aux *.out 

