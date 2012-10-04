module Shopkit
  class Client
    module Orders

      def orders(options={})
        traversal(options) do
          get('/orders', options)['orders']
        end
      end

      def order(id, options={})
        get("/orders/#{id}", options)['order']
      end

    end

    include Orders
  end
end
