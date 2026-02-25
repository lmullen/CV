default : Mullen-cv.pdf Mullen-cv-two-page.pdf

Mullen-cv.pdf : Mullen-cv.tex
	latexmk -pdf $<
	latexmk -c

Mullen-cv-two-page.pdf : Mullen-cv-two-page.tex
	latexmk -pdf $<
	latexmk -c

deploy : Mullen-cv.pdf Mullen-cv-two-page.pdf
	npx wrangler r2 object put --remote files-dot-lincolnmullen-dot-com/cv/Mullen-cv.pdf --file Mullen-cv.pdf
	npx wrangler r2 object put --remote files-dot-lincolnmullen-dot-com/cv/Mullen-cv-two-page.pdf --file Mullen-cv-two-page.pdf

.PHONY : clean deploy copy
