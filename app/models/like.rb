class Like < ActiveRecord::Base
  belongs_to :user, required: false
  belongs_to :word, required: false
  validates :user, presence: true
  validates :content_id, presence: true
  validates :user_id, presence: true, uniqueness: { scope: [:content_id] }
  validates :word_id, presence: true

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
end
