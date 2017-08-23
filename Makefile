all : Mullen-cv.pdf Mullen-cv.one-page.pdf Mullen-cv.two-page.pdf

Mullen-cv.pdf : Mullen-cv.tex
	latexmk -pdf $<

Mullen-cv.one-page.pdf : Mullen-cv.one-page.tex
	latexmk -pdf $<

Mullen-cv.two-page.pdf : Mullen-cv.two-page.tex
	latexmk -pdf $<

Mullen.NEH-resume.pdf : Mullen.NEH-resume.tex
	latexmk -pdf $<

clean :
	latexmk -c
	rm -f Mullen-cv.pdf
	rm -f Mullen-cv.two-page.pdf
	rm -f Mullen.NEH-resume.pdf

deploy : Mullen-cv.pdf
	scp Mullen-cv.pdf reclaim:~/public_html/lincolnmullen.com/files/

.PHONY : clean deploy copy
