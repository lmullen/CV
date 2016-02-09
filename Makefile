all : Mullen-cv.pdf Mullen-cv.two-page.pdf

Mullen-cv.pdf : Mullen-cv.tex
	latexmk $<

Mullen-cv.two-page.pdf : Mullen-cv.two-page.tex
	latexmk $<

clean :
	latexmk -c
	rm -f Mullen-cv.pdf
	rm -f Mullen-cv.two-page.pdf

deploy :
	scp Mullen-cv.pdf reclaim:~/public_html/lincolnmullen.com/files/

.PHONY : clean deploy copy
