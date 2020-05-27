class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.references :city, null: false, foreign_key: true
      t.string :name
      t.string :category
      t.integer :rating

      t.timestamps
    end
  end
end
