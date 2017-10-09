class Profile < ApplicationRecord
  belongs_to :users

  #validates_presence_of :pet, :pet_type ,:quiet, :noisy, :clean, :messy, :kind_of_clean,
  #                      :party, :drink, :smoke, :study, :major
end
