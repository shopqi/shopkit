require 'spec_helper'

describe Shopkit::Client::Shop do

  before do
    fake_web "shop"
  end

  it 'should get current shop' do
    Shopkit.shop['domain'].should_not be_empty
  end
  
end
