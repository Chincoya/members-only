class RenameCommentsTableToPosts < ActiveRecord::Migration[6.0]
  def change
    rename_table :comments, :posts
  end
end
