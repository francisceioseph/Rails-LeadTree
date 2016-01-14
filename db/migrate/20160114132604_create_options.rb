class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :title
      t.text :text

      t.timestamps null: false

      t.belongs_to :question
    end

    add_index :options, :question_id
  end
end
