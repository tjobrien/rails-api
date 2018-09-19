class CreateExecutions < ActiveRecord::Migration[5.2]
  def change
    create_table :executions do |t|
      t.integer :order_id

      t.timestamps
    end
  end
end
