require 'spec_helper'

describe Shopkit do

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
