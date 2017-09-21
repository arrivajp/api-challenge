class AddColumnToExample < ActiveRecord::Migration[5.1]
  def change
    add_column :examples, :word_id, :integer
  end
end
