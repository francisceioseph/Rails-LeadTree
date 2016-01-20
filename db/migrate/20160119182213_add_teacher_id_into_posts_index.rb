class AddTeacherIdIntoPostsIndex < ActiveRecord::Migration
  def change
    add_index :posts, :teacher_id
  end
end
