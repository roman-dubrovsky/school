class RenameLessons < ActiveRecord::Migration[6.1]
  def change
    rename_table :lessons, :courses
  end
end
