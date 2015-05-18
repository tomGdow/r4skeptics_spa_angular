class CreateCommodities < ActiveRecord::Migration
  def change
    create_table :commodities do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :image_url
      t.string :category
      t.integer :year
      t.boolean :winner

      t.timestamps null: false
    end
  end
end
