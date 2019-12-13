all : Mullen-cv.pdf Mullen-cv-two-page.pdf Mullen-cv-one-page.pdf

Mullen-cv.pdf : Mullen-cv.tex
	latexmk -pdf $<
	latexmk -c

Mullen-cv-two-page.pdf : Mullen-cv-two-page.tex
	latexmk -pdf $<
	latexmk -c

Mullen-cv-one-page.pdf : Mullen-cv-one-page.tex
	latexmk -pdf $<
	latexmk -c

deploy : Mullen-cv.pdf
	scp Mullen-cv.pdf reclaim:~/public_html/lincolnmullen.com/files/

.PHONY : clean deploy copy
