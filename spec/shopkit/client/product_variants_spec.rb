require 'spec_helper'

describe Shopkit::Client::Products do

  let(:id) { 1 }

  let(:body) { { variant: { id: id, price: 45 } } }

  before do
    fake_web "variants/#{id}", method: :put, request_body: body.to_json, json_file: :variant
  end

  it 'should update variant' do
    variant = Shopkit.update_variant(id, body)
    variant['price'].should eql 45
  end

end
