class Role < ApplicationRecord
  has_many :user_roles
  has_many :users, through: :user_roles

  validates_presence_of :name, :description
end
