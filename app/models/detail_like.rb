class DetailLike < Like
  belongs_to :detail, foreign_key: 'word_id'
  belongs_to :word
end
