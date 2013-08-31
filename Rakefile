task :default => :cv

desc "Make the CV"
task :cv do
	sh "pandoc scholarship.md -o scholarship.tex"
	sh "latexmk Mullen-cv.tex"
	sh "latexmk -c"
end

desc "Remove LaTeX's mess"
task :clean do
  sh "latexmk -c"
end

