require 'net/http/post/multipart'
require 'uri'

module XJ
  module API
    def self.post(path)
      uri = URI.parse('http://radiant-coast-1430.herokuapp.com')

      http = Net::HTTP.new(uri.host, uri.port)

      http.read_timeout = 15
      http.open_timeout = 15

      file = UploadIO.new File.open(path)

      request = Net::HTTP::Post::Multipart.new(uri.path, :file => file)

      http.request(request).tap do |response|
        [response.status, response.body]
      end
    end
  end
end