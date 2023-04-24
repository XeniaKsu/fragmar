class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.references :perfume, null: false, foreign_key: true
      t.references :seller, null: false, foreign_key: true
      t.string :condition
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
