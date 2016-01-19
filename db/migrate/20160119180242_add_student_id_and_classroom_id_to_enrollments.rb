class AddStudentIdAndClassroomIdToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :student_id, :integer
    add_column :enrollments, :classroom_id, :integer
  end
end
