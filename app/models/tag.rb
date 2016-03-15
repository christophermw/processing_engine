class Tag < ActiveRecord::Base
  belongs_to :project
  has_many :tags_fields
  has_many :fields, through: :tags_fields, class_name: 'EventField'
  has_many :triggers

  accepts_nested_attributes_for :tags_fields
  accepts_nested_attributes_for :fields, allow_destroy: true
end
