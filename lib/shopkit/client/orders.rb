module Shopkit
  class Client
    module Orders

      def orders(options={})
        get('/orders')['orders']
      end

    end

    include Orders
  end
end
