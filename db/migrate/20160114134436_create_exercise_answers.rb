class CreateExerciseAnswers < ActiveRecord::Migration
  def change
    create_table :exercise_answers do |t|
      t.timestamp :submitted_at

      t.timestamps null: false

      t.belongs_to :exercise_lists
    end

    add_index :exercise_answers, :exercise_list_id
  end
end
