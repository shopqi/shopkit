require 'spec_helper'

describe Shopkit do

  context 'with permission' do

    before do
      Shopkit.auto_traversal = true
      fake_web "orders", query: {per_page: 100, page: 1}
      fake_web "orders", query: {per_page: 100, page: 2}, json_file: "orders_page_2"
      fake_web "orders", query: {per_page: 100, page: 3}, json_file: "orders_page_3"
      fake_web "orders", query: {per_page: 100, page: 4}, json_file: "orders_empty"
    end

    after do
      Shopkit.auto_traversal = false
    end

    it 'should be auto_traversal' do
      Shopkit.orders(page: 1).size.should eql 3
    end

  end

  context 'without permission' do

    describe 'list' do

      it 'should not be nil' do
        stub_request(:get, "#{Shopkit.url}/api/orders.json?page=1&per_page=30").to_return(status: 401, body: "")
        Shopkit.orders.should eql []
      end

    end

  end
  
end
