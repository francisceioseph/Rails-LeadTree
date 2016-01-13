class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :access_code, :unique => true
      t.string :subject
      t.text :description

      t.timestamps null: false
    end
  end
end
