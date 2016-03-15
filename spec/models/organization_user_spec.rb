require 'rails_helper'

describe OrganizationUser do
  before(:all) do
    @user = create(:user)
  end

  it 'should default is_admin to false' do
    expect(@user.is_admin).to be_falsey
  end

  it 'should default is_super_user to false' do
    expect(@user.is_super_user).to be_falsey
  end
end