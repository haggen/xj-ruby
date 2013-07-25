# XJ - Read XLS into JSON.
# Version: 1.0
# Author: Arthur <arthur@corenzan.com>
# Site: https://github.com/haggen/xj-ruby
#
# Example 1:
# spreadsheet = XJ::Spreadsheet.new('./sample.xls')
# spreadsheet.to_json
# spreadsheet.to_hash
#
# Example 2:
# XJ.read('./sample.xls').to_json
#
require 'json'

require 'xj/version'
require 'xj/api'
require 'xj/spreadsheet'

module XJ

  # Exception class
  class XJException < StandardError
  end

  # Shortcut
  def self.read(path)
    Spreadsheet.new(path)
  end
end
