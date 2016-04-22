class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :order
      t.text :description
      t.integer :delivery
      t.integer :price
      t.timestamps null: false
    end
  end
end
