module Shopkit
  class Client
    module Products

      def products(options={})
        get('/products', options)['products']
      end

    end

    include Products
  end
end
