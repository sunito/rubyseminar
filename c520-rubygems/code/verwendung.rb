require 'rubygems' # ab Ruby 1.9 nicht mehr noetig
require 'roo'

spreadsheet = Openoffice.new("spreadsheet.ods")
puts spreadsheet.cell('A',1,
                      spreadsheet.sheets.first)
