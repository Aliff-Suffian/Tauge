class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :content
      t.integer :course_id
      t.timestamps
    end
  end
end
