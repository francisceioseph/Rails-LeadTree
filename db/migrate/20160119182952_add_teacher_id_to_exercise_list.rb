class AddTeacherIdToExerciseList < ActiveRecord::Migration
  def change
    add_column :exercise_lists, :teacher_id, :integer
    add_index :exercise_lists, :teacher_id
  end
end
