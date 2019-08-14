all : Mullen-cv.pdf 

Mullen-cv.pdf : Mullen-cv.tex
	latexmk -pdf $<

clean :
	latexmk -c

deploy : Mullen-cv.pdf
	scp Mullen-cv.pdf reclaim:~/public_html/lincolnmullen.com/files/

.PHONY : clean deploy copy
