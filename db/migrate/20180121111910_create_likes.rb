class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :word_id
      t.string :type

      t.timestamps
    end
  end
end
