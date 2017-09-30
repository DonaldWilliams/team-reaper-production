class User < ApplicationRecord

  has_many :user_roles
  has_many :roles, through: :user_roles

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable

  validates_presence_of :email
  validates_format_of :email, with: /@/

  def has_role?(role_sym)
    roles.any? { |r| r.name.underscore.to_sym == role_sym }
  end
end
