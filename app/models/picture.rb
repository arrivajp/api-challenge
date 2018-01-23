class Picture < ApplicationRecord
  belongs_to :word
  belongs_to :user
  has_many :likes
  mount_uploader :picture, PictureUploader
end
