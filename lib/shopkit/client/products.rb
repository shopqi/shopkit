module Shopkit
  class Client
    module Products

      def products(options={})
        traversal(options) do
          get('/products', options)['products']
        end
      end

      def product(id, options={})
        get("/products/#{id}", options)['product']
      end

    end

    include Products
  end
end
