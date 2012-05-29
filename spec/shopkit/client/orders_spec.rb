require 'spec_helper'

describe Shopkit::Client::Orders do

  before do
    fake_web "orders"
  end

  it 'should get orders' do
    Shopkit.orders.size.should_not eql 0
  end
  
end
