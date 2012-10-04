require 'spec_helper'

describe Shopkit do

  before do
    fake_web "orders", query: {per_page: 1, page: 1}
    fake_web "orders", query: {per_page: 1, page: 2}, json_file: "orders_page_2"
    fake_web "orders", query: {per_page: 1, page: 3}, json_file: "orders_page_3"
    fake_web "orders", query: {per_page: 1, page: 4}, json_file: "orders_empty"
  end

  it 'should be auto_traversal' do
    Shopkit.auto_traversal = true
    Shopkit.orders(per_page: 1, page: 1).size.should eql 3
  end
  
end
