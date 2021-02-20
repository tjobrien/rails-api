class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.string :name
      t.string :zip
      t.string :payment_mode

      t.timestamps
    end
  end
end
