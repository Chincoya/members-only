class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :user #foreign_key:true, class_name: 'user'
      t.references :anonuser

      t.timestamps
    end
  end
end
