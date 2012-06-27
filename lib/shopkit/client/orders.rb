module Shopkit
  class Client
    module Orders

      def orders(options={})
        get('/orders', options)['orders']
      end

    end

    include Orders
  end
end
