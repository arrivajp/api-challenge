class AddColumnTolikes < ActiveRecord::Migration[5.1]
  def change
    add_column :likes, :content_id, :integer
  end
end
