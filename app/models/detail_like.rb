class DetailLike < Like
  belongs_to :detail, foreign_key: 'content_id'
end
