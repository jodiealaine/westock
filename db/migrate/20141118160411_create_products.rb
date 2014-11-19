class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.decimal :price
      t.date :availability_date
      t.boolean :active

      t.timestamps null: false
    end
  end
end
