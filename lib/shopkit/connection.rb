require 'faraday_middleware'

module Shopkit

  module Connection
    private

    def connection
      @conn ||= Faraday.new(:url => "http://#{url}") do |builder|
        builder.request :oauth2, access_token
        #builder.request :json

        builder.response :logger
        builder.response :json, :content_type => /\bjson$/

        builder.adapter :net_http
      end
    end

  end
end
