class PictureLike < Like
  belongs_to :picture, foreign_key: 'content_id'
end
