require 'json'

module XJ
  class Spreadsheet
    attr_accessor :response

    def initialize(path)
      @response = API.post(path)
    end

    def error
      status != 200 ? status : to_hash['error']
    end

    def status
      @response.code.to_i
    end

    def to_json
      @response.body
    end

    def to_hash
      JSON.parse(to_json)
    end
  end
end