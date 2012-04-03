class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :title
      t.string :link
      t.decimal :goal
      t.text :description
      t.references :user

      t.timestamps
    end
    add_index :ads, :user_id
  end
end
