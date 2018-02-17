class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :pictures
  has_many :details
  has_many :meanings
  has_many :words, through: :pictures
  has_many :likes

  accepts_nested_attributes_for :pictures
  accepts_nested_attributes_for :likes

  mount_uploader :picture, PictureUploader



  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true
  validates :email, presence: true
end
