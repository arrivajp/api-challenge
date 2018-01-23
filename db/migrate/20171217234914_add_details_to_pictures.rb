class AddDetailsToPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :word_id, :integer
  end
end
