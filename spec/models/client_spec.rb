require 'rails_helper'

describe Client do
  before(:each) do
    @client = create(:client)
  end

  it 'should default active to true' do
    expect(@client.active).to be_truthy
  end
end