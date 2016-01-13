class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :text

      t.timestamps null: false

      t.belongs_to :classroom
    end

    add_index :posts, :classroom_id
  end
end
