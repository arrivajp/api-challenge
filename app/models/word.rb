class Word < ApplicationRecord
  has_many :meanings
  has_many :examples
  has_many :details
  has_many :pictures
  has_many :users, through: :pictures
  has_many :likes

  accepts_nested_attributes_for :meanings
  accepts_nested_attributes_for :examples
  accepts_nested_attributes_for :details
  accepts_nested_attributes_for :pictures
  accepts_nested_attributes_for :users
  accepts_nested_attributes_for :likes
end
