class Client < ActiveRecord::Base
  has_many :organizations, class_name: 'ClientOrganization'
  has_many :organization_users, through: :client_organizations

  scope :active, -> { where(active: true)}

  validates_uniqueness_of :name
end