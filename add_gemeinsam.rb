#!/usr/bin/env ruby
ARGV.each do |filename|
  puts filename
  File.open(filename) do |f|
    File.open(filename + ".new","w") do |fn|
      fn.puts <<_END_
%======== BEGIN inserted by #{$0} ======================
\\documentclass{beamer}
\\input{../gemeinsam.tex}
\\begin{document}
\\lstset{language=Ruby}
\\lstset{basicstyle=\\small,numbers=none, numberstyle=\\tiny, numbersep=5pt}
%======== END inserted by #{$0} ======================
_END_
      f.each_line do |line|
        fn.puts line
      end
      fn.puts <<_END_
%======== BEGIN inserted by #{$0} ======================
\\end{document}
%======== END inserted by #{$0} ======================
_END_
    end # fn
  end # f
end # ARGV
