class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :text
      t.timestamps null: false

      t.belongs_to :exercise_list
    end

  end
end
