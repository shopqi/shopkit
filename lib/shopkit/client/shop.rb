module Shopkit
  class Client
    module Shop

      def shop(options={})
        get('/shop')['shop']
      end

    end

    include Shop
  end
end
