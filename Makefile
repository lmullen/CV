Mullen-cv.pdf : Mullen-cv.tex
	latexmk $<

clean :
	latexmk -c
	rm -f Mullen-cv.pdf

deploy :
	scp Mullen-cv.pdf reclaim:~/public_html/lincolnmullen.com/files/

.PHONY : clean deploy copy
