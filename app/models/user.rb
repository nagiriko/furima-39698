class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  validates :nickname,                 presence: true
  validates :email,                    presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates :password, format: { with: VALID_PASSWORD_REGEX }
  validates :password_confirmation,    presence: true
  validates_confirmation_of :password
  validates :last_name,                 presence: true, format: { with: /\A[ぁ-んァ-ン一-龯々]+\z/ }
  validates :first_name,                presence: true, format: { with: /\A[ぁ-んァ-ン一-龯々]+\z/ }
  validates :last_name_kana,            presence: true, format: { with: /\A[ァ-ンー－]+\z/ }
  validates :first_name_kana,           presence: true, format: { with: /\A[ァ-ンー－]+\z/ }
  validates :birthdate,                 presence: true
  has_many :items
  has_many :orders
end
