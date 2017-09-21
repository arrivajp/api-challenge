class AddWordReferenceToMeanings < ActiveRecord::Migration[5.1]
  def change
    add_reference :meanings, :word, index: true
  end
end
