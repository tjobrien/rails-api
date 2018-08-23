class CreateVersions < ActiveRecord::Migration[5.2]
  def change
    create_table :versions do |t|
      t.integer :versionable_id
      t.string :versionable_type
      t.json :resource_old
      t.json :resource_new
      t.integer :new_version_id
      t.integer :previous_version_id

      t.timestamps
    end

    add_index :versions, [:versionable_type, :versionable_id]
  end
end
