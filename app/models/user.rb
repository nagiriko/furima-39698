class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  validates :nickname,                 presence: true

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates :password, format: { with: VALID_PASSWORD_REGEX }
  validates :last_name,                 presence: true, format: { with: /\A[ぁ-んァ-ン一-龥々ーヶ]+\z/ }
  validates :first_name,                presence: true, format: { with: /\A[ぁ-んァ-ン一-龥々ーヶ]+\z/ }
  validates :last_name_kana,            presence: true, format: { with: /\A[ァ-ヶー]+\z/ }
  validates :first_name_kana,           presence: true, format: { with: /\A[ァ-ヶー]+\z/ }
  validates :birthdate,                 presence: true
  has_many :items
  has_many :orders
end
