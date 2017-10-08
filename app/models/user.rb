class User < ApplicationRecord

  has_many :user_roles
  has_many :roles, through: :user_roles
  has_one :profile
  accepts_nested_attributes_for :profile

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable

  validates_presence_of :email, :first_name, :last_name
  validates_format_of :email, with: /@/

  def has_role?(role_sym)
    roles.any? { |r| r.name.underscore.to_sym == role_sym }
  end

  def full_name
    self.first_name + ' ' + self.last_name
  end
end
