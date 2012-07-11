module Shopkit
  class Client
    module Webhooks

      def create_webhook(options={})
        post('/webhooks', options)['webhook']
      end

    end

    include Webhooks
  end
end
