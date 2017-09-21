class Word < ApplicationRecord
  has_many :meanings
  has_many :examples
  accepts_nested_attributes_for :meanings
  accepts_nested_attributes_for :examples
end
