class Schedule < ApplicationRecord
  validates :year, presence: true
  validates :month, presence: true
  validates :day, presence: true
  validates :hour, presence: true
  validates :user_id, presence: true

  belongs_to :user

end
