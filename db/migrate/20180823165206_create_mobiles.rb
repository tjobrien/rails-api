class CreateMobiles < ActiveRecord::Migration[5.2]
  def change
    create_table :mobiles do |t|
      t.string :title
      t.string :remarks
      t.integer :version

      t.timestamps
    end
  end
end
