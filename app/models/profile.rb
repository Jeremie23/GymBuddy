class Profile < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true

  has_many :preferences
  has_many :objectives

  has_many :initiated_matches, class_name: 'Match', foreign_key: 'profile_id'
  has_many :received_matches, class_name: 'Match', foreign_key: 'matched_profile_id'
end
