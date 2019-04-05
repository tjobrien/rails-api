class CreateClicks < ActiveRecord::Migration[5.2]
  def change
    create_table :clicks do |t|
      t.string :product_id
      t.string :affiliate_id

      t.timestamps
    end
  end
end
