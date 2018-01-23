class MeaningLike < Like
  belongs_to :meaning, foreign_key: 'word_id'
end
