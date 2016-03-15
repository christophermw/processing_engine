class OrganizationUser < ActiveRecord::Base
  belongs_to :client_organization
end