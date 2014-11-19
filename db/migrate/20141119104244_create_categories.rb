class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.boolean :active
      t.boolean :visible_on_homepage
      t.timestamps null: false
    end
  end
end
