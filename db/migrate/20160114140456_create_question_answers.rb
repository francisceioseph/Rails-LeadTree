class CreateQuestionAnswers < ActiveRecord::Migration
  def change
    create_table :question_answers do |t|
      t.timestamps null: false

      t.belongs_to :exercise_answer
      t.belongs_to :question
      t.belongs_to :option
    end

    add_index :question_answers, :exercise_answer_id
    add_index :question_answers, :question_id
    add_index :question_answers, :option_id
  end
end
