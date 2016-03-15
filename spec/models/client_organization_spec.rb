require 'rails_helper'

describe ClientOrganization do
  it 'should have a client associated with it' do
    client_organization = create(:client_organization)
    expect(client_organization.client_id).not_to be_nil
  end

  it 'should get a valid api' do
    client_organization = create(:client_organization, name: 'admin')
    api = client_organization.get_api
    expect(api).not_to be_nil
    expect(api.get_sso_token).not_to be_nil
  end
end