# encoding: utf-8
def make_tex(dir,texfile)
  sh "cd #{dir}; pdflatex #{texfile}"
end

task :default => :pdf

desc 'alle PDFs erzeugen'
task :pdf => [:pdf_fiber,
              :pdf_threads,
              :pdf_fiber,
              :pdf_simple_oo,
              :pdf_intro,
              :pdf_exceptions,
              :pdf_eigenclass,
              :pdf_rubygems,
              :pdf_fxruby]

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

desc 'PDF für simple-oo erzeugen'
task :pdf_simple_oo do
  make_tex('c020-simple-oo','simple-oo-chapter.tex')
end

desc 'PDF für intro erzeugen'
task :pdf_intro do
  make_tex('c010-intro','intro-chapter.tex')
end

desc 'PDF für exceptions erzeugen'
task :pdf_exceptions do
  make_tex('cxxx-exceptions','exceptions-chapter.tex')
end

desc 'PDF für eigenclass erzeugen'
task :pdf_eigenclass do
  make_tex('c110-eigenclass','eigenclass-chapter.tex')
end

desc 'PDF für rubygems erzeugen'
task :pdf_rubygems do
  make_tex('c520-rubygems','rubygems-chapter.tex')
end

desc 'PDF für fxruby erzeugen'
task :pdf_fxruby do
  make_tex('cxxx-fxruby','fxruby-chapter.tex')
end

