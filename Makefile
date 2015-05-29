Mullen-cv.pdf : Mullen-cv.tex web-cv.tex
	latexmk Mullen-cv.tex
	latexmk -c

web-cv.tex : web-cv.md
	pandoc $^ -o $@

clean :
	latexmk -c
	rm -f Mullen-cv.pdf

deploy :
	scp Mullen-cv.pdf reclaim:~/public_html/lincolnmullen.com/files/

.PHONY : clean deploy copy
