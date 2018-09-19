class CreateCalculables < ActiveRecord::Migration[5.2]
  def change
    create_table :calculables do |t|
      t.string :calculable_type
      t.integer :calculable_id
      t.integer :execution_id

      t.timestamps
    end
  end
end
