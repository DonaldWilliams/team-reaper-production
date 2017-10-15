class Profile < ApplicationRecord
  belongs_to :users

  def self.check_user_id (profile, match)
    profile.user_id == match.user_id
  end

  def self.pet_section (profile, match)
    profile.pet == match.pet unless check_user_id(profile, match)
  end

  def self.noise_section (profile, match)
    profile.quiet == match.quiet && profile.noisy == match.noisy unless check_user_id(profile, match)
  end

  def self.clean_section (profile, match)
    profile.clean == match.clean && profile.messy == match.messy && profile.kind_of_clean == match.kind_of_clean unless check_user_id(profile, match)
  end

  def self.fun_section (profile, match)
    profile.party == match.party && profile.drink == match.drink && profile.smoke == match.smoke unless check_user_id(profile, match)
  end

  def self.study_section (profile, match)
    profile.study == match.study unless check_user_id(profile, match)
  end
end
