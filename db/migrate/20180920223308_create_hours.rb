class CreateHours < ActiveRecord::Migration[5.2]
  def change
    create_table :hours do |t|
      t.integer :employee_id
      t.string :description

      t.timestamps
    end
  end
end
