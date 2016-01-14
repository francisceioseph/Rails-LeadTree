class AddClassroomIdToQuestionIndex < ActiveRecord::Migration
  def change
    add_index :questions, :exercise_list_id
  end
end
