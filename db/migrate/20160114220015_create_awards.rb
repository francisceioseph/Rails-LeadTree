class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.string :title
      t.text :text
      t.string :requisite

      t.timestamps null: false
    end
  end
end
