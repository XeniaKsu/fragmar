class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.references :listing, null: false, foreign_key: true
      t.references :buyer, null: false, foreign_key: true
      t.date :purchase_date
      t.text :shipping_address
      t.float :total_price

      t.timestamps
    end
  end
end
