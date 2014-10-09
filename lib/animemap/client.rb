require 'faraday'
require 'json'

module Animemap
  class Client

    API_ENDPOINT = 'http://animemap.net/'

    def initialize
      @connection = Faraday::Connection.new(:url => API_ENDPOINT) do |faraday|
        faraday.use Faraday::Adapter::NetHttp
      end
    end

    def find_programs_by_area(area)
      res = @connection.get '/api/table/' + area + '.json'
      if res.success? then
        body = JSON.parse(res.body, :symbolize_names => true)
        return body[:response][:item]
      end
    end
  end
end