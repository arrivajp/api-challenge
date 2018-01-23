class AddDetailsToMeaning < ActiveRecord::Migration[5.1]
  def change
    add_column :meanings, :user_id, :integer
  end
end
