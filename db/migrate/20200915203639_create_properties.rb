class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.text :description
      t.string :year_built
      t.integer :square_feet
      t.integer :bedrooms
      t.float :bathrooms
      t.integer :floors
      t.boolean :availability, default: true
      t.decimal :price, precision: 9, scale: 2
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
