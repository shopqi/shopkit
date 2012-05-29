require 'spec_helper'

describe Shopkit::Client::Products do

  before do
    fake_web "products"
  end

  it 'should get products' do
    Shopkit.products.size.should_not eql 0
  end
  
end
