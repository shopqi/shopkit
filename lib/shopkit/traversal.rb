module Shopkit
  module Traversal

    def traversal(options) # 遍历所有页面
      options[:page] ||= 1
      options[:per_page] ||= per_page
      options[:per_page] = 100 if auto_traversal
      list = yield(options) || []
      if auto_traversal and !list.empty?
        options[:page] += 1
        list += traversal(options) do
          yield(options)
        end
      end
      list
    end

  end
end
