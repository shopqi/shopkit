module Shopkit
  class Client
    module Products

      def products(options={})
        get('/products')['products']
      end

    end

    include Products
  end
end
