class AddLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :description
      t.integer :course_id

      t.timestamps
    end
  end
end
