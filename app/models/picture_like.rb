class PictureLike < Like
  belongs_to :picture, foreign_key: 'word_id'
end
