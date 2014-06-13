Mullen-cv.pdf : Mullen-cv.tex
	latexmk Mullen-cv.tex
	latexmk -c

clean :
	latexmk -c
	rm -f Mullen-cv.pdf

deploy :
	scp Mullen-cv.pdf reclaim:~/public_html/lincolnmullen.com/files/

.PHONY : clean deploy
