class RenameContentIdToWordId < ActiveRecord::Migration[5.1]
      def change
         rename_column :likes, :content_id, :word_id
      end
end
