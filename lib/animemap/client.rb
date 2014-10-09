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
      return "" unless res.success?
      body = JSON.parse(res.body, :symbolize_names => true)
      body[:response][:item]
    end
  end
end