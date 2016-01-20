class AddTeacherIdToClassroomsIndex < ActiveRecord::Migration
  def change
    add_index :classrooms, :teacher_id
  end
end
