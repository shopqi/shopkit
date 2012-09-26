module Shopkit
  class Client
    module Products

      def products(options={})
        get('/products', options)['products']
      end

      def product(id, options={})
        get("/products/#{id}", options)['product']
      end

    end

    include Products
  end
end
