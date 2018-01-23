class RenameWordIdToContentId < ActiveRecord::Migration[5.1]
  def change
     rename_column :likes, :word_id, :content_id
  end
end
