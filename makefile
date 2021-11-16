LATEXMK="latexmk"
PDFLATEX="pdflatex"
GNUPLOT="gnuplot"

all: main.pdf

-include main.dep

main.pdf: main.tex FORCE
	${LATEXMK} -f -interaction=nonstopmode -pdf -pdflatex="${PDFLATEX} -shell-escape" -deps-out=main.dep -use-make $<

plt/%.tex: plt/%.plt plt/%.dat
	${GNUPLOT} $<

FORCE:

clean:
	rm -f main.aux main.dep main.fdb_latexmk main.fls main.log main.pdf
	rm -f plt/*.eps plt/*-eps-converted-to.pdf plt/*.tex
