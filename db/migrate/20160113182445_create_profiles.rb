class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :phone
      t.text   :about_me
      t.string :city
      t.string :region

      t.timestamps null: false
    end
  end
end
