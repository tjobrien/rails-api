class CreateLessonMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :lesson_media do |t|
      t.string :lesson_type
      t.string :content
      t.bigint :lesson_id

      t.timestamps
    end
  end
end
