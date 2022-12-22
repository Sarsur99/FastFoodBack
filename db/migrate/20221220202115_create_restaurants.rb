class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :image
      t.string :slug

      t.timestamps
    end
  end
end
