#!/usr/bin/env ruby
#
Dir.glob("*/**/*.pdf").sort.each do |fn|
  p fn
  puts `xpdf #{fn}`
end
