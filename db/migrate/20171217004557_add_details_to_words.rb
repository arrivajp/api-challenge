class AddDetailsToWords < ActiveRecord::Migration[5.1]
  def change
    add_column :words, :picture_id, :integer
  end
end
