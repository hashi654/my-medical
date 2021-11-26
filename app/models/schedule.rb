class Schedule < ApplicationRecord
  validates :year, presence: true
  validates :month, presence: true
  validates :day, presence: true
  validates :hour, presence: true
  validates :user_id, presence: true

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :year
  belongs_to :month
  belongs_to :day
  belongs_to :hour

end
