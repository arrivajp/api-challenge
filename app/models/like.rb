class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :word
  validates :user, presence: true, uniqueness: { scope: [:word_id, :type] }
  validates :content_id, presence: true
  validates :word_id, presence: true

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
end
