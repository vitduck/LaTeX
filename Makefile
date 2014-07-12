TEX = latexmk -xelatex -interaction=batchmode -shell-escape
SRC = main.tex

main: $(SRC)
	$(TEX) $(SRC)

clean: 
	$(TEX) -C
