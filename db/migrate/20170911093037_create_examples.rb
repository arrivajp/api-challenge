class CreateExamples < ActiveRecord::Migration[5.1]
  def change
    create_table :examples do |t|
      t.string :japanese
      t.string :english

      t.timestamps
    end
  end
end
