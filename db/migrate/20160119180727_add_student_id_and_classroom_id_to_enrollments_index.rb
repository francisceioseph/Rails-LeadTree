class AddStudentIdAndClassroomIdToEnrollmentsIndex < ActiveRecord::Migration
  def change
    add_index :enrollments, :student_id
    add_index :enrollments, :classroom_id
  end
end
