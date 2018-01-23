class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :word
  validates :user, presence: true, uniqueness: { scope: [:word_id, :type] }
  validates :content_id, presence: true
  validates :word_id, presence: true
end
