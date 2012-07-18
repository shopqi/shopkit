require 'faraday_middleware'
require 'faraday_middleware/request/oauth2'

module Shopkit

  module Connection
    private

    def connection
      #@conn ||= Faraday.new(:url => "https://#{url}") do |builder|
      @conn ||= Faraday.new(:url => "http://#{url}") do |builder|
        builder.request :oauth2, access_token
        builder.request :json # fixed: NoMethodError: undefined method `bytesize' for {...}:Hash

        builder.response :logger
        builder.response :json, :content_type => /\bjson$/

        builder.adapter :net_http
      end
    end

  end
end
