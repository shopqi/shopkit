require 'fakeweb'
require 'shopkit'

FakeWeb.allow_net_connect = false
RSpec.configure do |config|

  config.before(:each) do
    shop_url = 'ruby-china-shop.shopqi.com'
    access_token = 'b68da7c5eb6c07ff3f5a1ce731555fdc'

    Shopkit.setup(shop_url, access_token)
  end

  def load_json(name)
    File.read(File.dirname(__FILE__) + "/json/#{name}.json")
  end

  def fake_web(endpoint, options={})
    body = options.has_key?(:body) ? options.delete(:body) : load_json(endpoint)
    method = options.delete(:method) || :get

    url = "https://#{Shopkit.url}/admin/#{endpoint}.json"
    FakeWeb.register_uri(method, url, {:body => body, :content_type => "text/json"}.merge(options))
  end

end
