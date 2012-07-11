module Shopkit
  class Client
    module Orders

      def orders(options={})
        get('/orders', options)['orders']
      end

      def order(id, options={})
        get("/orders/#{id}", options)['order']
      end

    end

    include Orders
  end
end
