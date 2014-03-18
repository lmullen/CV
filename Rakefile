task :default => :cv

desc "Make the CV"
task :cv do
	sh "latexmk Mullen-cv.tex"
	sh "latexmk -c"
end

desc "Remove LaTeX's mess"
task :clean do
  sh "latexmk -c"
end

task :push do
  # sh "s3cmd put Mullen-cv.pdf s3://lincolnmullen.com/downloads/docs/"
  system %[scp Mullen-cv.pdf reclaim:~/public_html/lincolnmullen.com/files/]
end
