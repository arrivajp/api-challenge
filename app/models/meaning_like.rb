class MeaningLike < Like
  belongs_to :meaning, foreign_key: 'content_id'

end
