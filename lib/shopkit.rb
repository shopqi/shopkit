require 'shopkit/configuration'
require 'shopkit/client'

module Shopkit
  extend Configuration

  class << self

    # @return [Shopkit::Client]
    def new(options={})
      options['url'] = self.url
      options['access_token'] = self.access_token
      Shopkit::Client.new(options)
    end


    # Delegate to Shopkit::Client.new
    def method_missing(method, *args, &block)
      return super unless new.respond_to?(method)
      new.send(method, *args, &block)
    end

    def setup(options)
      self.url = options[:url]
      self.access_token = options[:access_token]
      options
    end

  end

end
