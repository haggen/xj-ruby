require 'json'

module XJ
  class Spreadsheet
    def initialize(path)
      @path = path
    end

    def to_json
      @json ||= API.post(@path)
    end

    def to_hash
      JSON.load(to_json)
    end
  end
end