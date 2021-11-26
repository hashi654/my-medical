class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :lastname, presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  validates :firstname, presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  validates :kana_lastname, presence: true, format: { with: /\A[ァ-ヶ]+\z/ }
  validates :kana_firstname, presence: true, format: { with: /\A[ァ-ヶ]+\z/ }
  validates :patient_id, presence: true, uniqueness: true
  validates :prefecture_id, presence: true
  validates :city, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }

  has_many :results
  has_many :schedules

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
end

