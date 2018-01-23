class CreateMeaningLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :meaning_likes do |t|
      t.integer :like_id
      t.integer :meaning_id

      t.timestamps
    end
  end
end
