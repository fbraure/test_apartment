class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.string :site

      t.timestamps
    end
  end
end
