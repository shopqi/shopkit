module Shopkit
  module Traversal

    def traversal(options) # 遍历所有页面
      list = yield(options)
      if auto_traversal and !list.empty?
        options[:page] ||= 1
        options[:page] += 1
        list += traversal(options) do
          yield(options)
        end
      end
      list
    end

  end
end
