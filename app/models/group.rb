class Group < ApplicationRecord
  has_many :entity_groups
  has_many :entities, through: :entity_groups
end
