class AddDetailsToDetail < ActiveRecord::Migration[5.1]
  def change
    add_column :details, :user_id, :integer
  end
end
