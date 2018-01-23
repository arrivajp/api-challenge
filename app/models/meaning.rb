class Meaning < ApplicationRecord
  belongs_to :word
  belongs_to :user
  has_many :likes

end
