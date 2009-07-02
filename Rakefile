# encoding: utf-8
def make_tex(dir,texfile)
  sh "cd #{dir}; pdflatex #{texfile}"
end

task :default => :pdf

desc 'alle PDFs erzeugen'
task :pdf => [
              :pdf_debugger,
              :pdf_exceptions,
              :pdf_eigenclass,
              :pdf_fiber,
              :pdf_fxruby,
              :pdf_intro,
              :pdf_logging,
              :pdf_rubygems,
              :pdf_simple_oo,
              :pdf_testunit,
              :pdf_threads,
              :pdf_quellen,
              :pdf_ruby19,
             ]

desc 'alles als PDF anzeigen'
task :show do
  sh 'showall.rb'
end

desc 'PDF für Fiber erzeugen'
task :pdf_fiber do
  make_tex('c210-fiber', 'fiber-chapter.tex')
end

desc 'PDF für Threads erzeugen'
task :pdf_threads do
  make_tex('c200-threads','threads-chapter.tex')
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
  make_tex('c050-exceptions','exceptions-chapter.tex')
end

desc 'PDF für eigenclass erzeugen'
task :pdf_eigenclass do
  make_tex('c110-eigenclass','eigenclass-chapter.tex')
end

desc 'PDF für rubygems erzeugen'
task :pdf_rubygems do
  make_tex('c510-rubygems','rubygems-chapter.tex')
end

desc 'PDF für fxruby erzeugen'
task :pdf_fxruby do
  make_tex('c690-fxruby','fxruby-chapter.tex')
end

desc 'PDF für testunit erzeugen'
task :pdf_testunit do
  make_tex('c520-testunit','testunit-chapter.tex')
end

desc 'PDF für logging erzeugen'
task :pdf_logging do
  make_tex('c540-logging','logging-chapter.tex')
end

desc 'PDF für debugger erzeugen'
task :pdf_debugger do
  make_tex('c550-debugger','debugger-chapter.tex')
end

desc 'PDF für quellen erzeugen'
task :pdf_quellen do
  make_tex('c780-quellen','quellen-chapter.tex')
end

desc 'PDF für ruby19 erzeugen'
task :pdf_ruby19 do
  make_tex('c700-ruby19','ruby19-chapter.tex')
end
