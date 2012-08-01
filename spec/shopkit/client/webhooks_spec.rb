require 'spec_helper'

describe Shopkit::Client::Webhooks do

  let(:request_body) { { webhook: { event: "order/fulfilled", callback_url: "http://lvh.me/webhook" }}.to_json }

  before do
    fake_web 'webhooks', method: :post, request_body: request_body, json_file: :webhook
  end

  it 'should be create' do
    webhook = Shopkit.create_webhook(webhook: {event: 'order/fulfilled', callback_url: 'http://lvh.me/webhook'})
    webhook['id'].should_not be_nil
  end

end
