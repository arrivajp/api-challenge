class CreateDetailLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :detail_likes do |t|
      t.integer :like_id
      t.integer :detail_id

      t.timestamps
    end
  end
end
