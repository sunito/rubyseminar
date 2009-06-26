# encoding: utf-8
def make_tex(dir,texfile)
  sh "cd #{dir}; pdflatex #{texfile}"
end

task :default => :pdf

desc 'alle PDFs erzeugen'
task :pdf => [:pdf_fiber, :pdf_threads, :pdf_fiber]

desc 'PDF für Fiber erzeugen'
task :pdf_fiber do
  make_tex('ch-fiber', 'fiber-chapter.tex')
end

desc 'PDF für Threads erzeugen'
task :pdf_threads do
  make_tex('ch-threads','threads-chapter.tex')
end

desc 'PDF für Fiber erzeugen'
task :pdf_fiber do
  make_tex('ch-fiber','fiber-chapter.tex')
end

