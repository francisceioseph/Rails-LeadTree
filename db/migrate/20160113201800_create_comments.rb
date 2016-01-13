class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text

      t.timestamps null: false
      t.belongs_to :post
    end

    add_index :comments, :post_id
  end
end
