class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.string :thumbnail
      t.integer :teacher_id
      t.timestamps
    end
  end
end
