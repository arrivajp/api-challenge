class CreateDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :details do |t|
      t.string :body
      t.integer :word_id

      t.timestamps
    end
  end
end
