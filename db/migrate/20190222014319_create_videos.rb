class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :asset
      t.string :path
      t.string :video_url
      t.string :locator
      t.string :status

      t.timestamps
    end
  end
end
