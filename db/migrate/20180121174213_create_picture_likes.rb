class CreatePictureLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :picture_likes do |t|
      t.integer :like_id
      t.integer :picture_id

      t.timestamps
    end
  end
end
