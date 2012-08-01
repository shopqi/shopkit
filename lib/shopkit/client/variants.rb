module Shopkit
  class Client
    module Variants

      def update_variant(id, options={})
        put("/variants/#{id}", options)['variant']
      end

    end

    include Variants
  end
end
