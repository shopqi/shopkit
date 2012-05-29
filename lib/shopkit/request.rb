require 'multi_json'

module Shopkit
  module Request
    def delete(path, options={}, version=api_version)
      request(:delete, path, options, version)
    end

    def get(path, options={}, version=api_version)
      request(:get, path, options, version)
    end

    def post(path, options={}, version=api_version)
      request(:post, path, options, version)
    end

    def put(path, options={}, version=api_version)
      request(:put, path, options, version)
    end

    private

    def request(method, path, options, version)
      path = "/admin#{path}" unless path.start_with?('/admin')
      path = "#{path}.json" unless path.end_with?('.json')
      response = connection.send(method) do |request|
        case method
        when :delete, :get
          request.url(path, options)
        when :post, :put
          request.path = path
          request.body = options unless options.empty?
        end
      end

      response.body
    end

  end
end
