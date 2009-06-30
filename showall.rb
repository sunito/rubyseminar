#!/usr/bin/env ruby
#
Dir.glob("*/**/*.pdf").sort.each do |fn|
  p fn
  puts `xpdf -fullscreen #{fn}` # Fullscreen
  # puts `xpdf             #{fn}` # kleines Fenster
end
