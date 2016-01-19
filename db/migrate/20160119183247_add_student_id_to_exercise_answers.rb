class AddStudentIdToExerciseAnswers < ActiveRecord::Migration
  def change
    add_column :exercise_answers, :student_id, :integer
    add_index :exercise_answers, :student_id
  end
end
