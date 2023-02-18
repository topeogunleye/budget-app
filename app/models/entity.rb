class Entity < ApplicationRecord
  has_many :entity_groups
  has_many :groups, through: :entity_groups
end
