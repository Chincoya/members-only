class CreateAnonusers < ActiveRecord::Migration[6.0]
  def change
    create_table :anonusers do |t|
      t.string :name

      t.timestamps
    end
    add_index :anonusers, :name, unique: true
  end
end
