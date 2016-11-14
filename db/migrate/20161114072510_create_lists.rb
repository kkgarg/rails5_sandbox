class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.references :user
      t.string :name

      t.timestamps
    end
    add_index :lists, :name
  end
end
