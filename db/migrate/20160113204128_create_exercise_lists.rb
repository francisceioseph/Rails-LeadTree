class CreateExerciseLists < ActiveRecord::Migration
  def change
    create_table :exercise_lists do |t|
      t.timestamp :expires_at
      t.string :title

      t.timestamps null: false
    end
  end
end
