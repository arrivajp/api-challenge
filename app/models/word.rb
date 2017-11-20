class Word < ApplicationRecord
  has_many :meanings
  has_many :examples
  has_many :details
  accepts_nested_attributes_for :meanings
  accepts_nested_attributes_for :examples
  accepts_nested_attributes_for :details
end
