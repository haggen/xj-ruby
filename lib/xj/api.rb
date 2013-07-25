require 'net/http/post/multipart'
require 'uri'

module XJ
  module API
    def self.post(path)
      uri = URI.parse('http://radiant-coast-1430.herokuapp.com')

      http = Net::HTTP.new(uri.host, uri.port)

      http.read_timeout = 15
      http.open_timeout = 15

      file = UploadIO.new File.open(path), 'application/octet-stream'

      request = Net::HTTP::Post::Multipart.new(uri.request_uri, :file => file)
      
      response = http.request(request)
    end
  end
end