TEX   = latexmk -xelatex -interaction=batchmode -shell-escape

SRC   = main.tex
TITLE = weekly
PDF   = "$(TITLE)-$(shell date "+%Y-%m-%d").pdf"

main: $(SRC)
	$(TEX) $(SRC)
	cp main.pdf $(PDF)

clean: 
	$(TEX) -C
