Mullen-cv.pdf : Mullen-cv.tex scholarship.md
	pandoc -i scholarship.md -o scholarship.tex
	latexmk Mullen-cv.tex
	latexmk -c 

upload : Mullen-cv.pdf
	scp Mullen-cv.pdf lam:public_html/docs/

