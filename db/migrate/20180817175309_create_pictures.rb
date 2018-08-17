class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :name
      t.integer :imageable_id
      t.string :imageable_type

      t.timestamps
    end

    add_index :pictures, [:imageable_type, :imageable_id]
  end
end
