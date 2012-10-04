require 'shopkit/connection'
require 'shopkit/request'
require 'shopkit/traversal'

#Load all files in client/ directory
Dir.glob("#{File.expand_path(File.dirname(__FILE__))}/client/*.rb").sort.each do |f|
  require f.match(/(shopkit\/client\/.*)\.rb$/)[0]
end

module Shopkit
  class Client
    attr_accessor(*Configuration::VALID_OPTIONS_KEYS)

    def initialize(options={})
      options = Shopkit.options.merge(options)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
    end

    include Shopkit::Connection
    include Shopkit::Request
    include Shopkit::Traversal
  end
end
