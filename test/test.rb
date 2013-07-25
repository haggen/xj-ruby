require File.expand_path('../lib/xj.rb')

spreadsheet = XJ.read File.expand_path('~/Desktop/i.xls')

puts "Response: #{spreadsheet.response}"
puts "Status: #{spreadsheet.status}"
puts "Error?: #{spreadsheet.error}"
puts "Body length: #{spreadsheet.to_json.length}"
