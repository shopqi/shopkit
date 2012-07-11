require 'spec_helper'

describe Shopkit::Client::Webhooks do

  before do
    fake_web 'webhooks', method: :post, json_file: :webhook
  end

  it 'should be create' do
    webhook = Shopkit.create_webhook(webhook: {event: 'order/fulfilled', callback_url: 'http://lvh.me/webhook'})
    webhook['id'].should_not be_nil
  end

end
