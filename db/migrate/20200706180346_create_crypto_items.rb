class CreateCryptoItems < ActiveRecord::Migration[6.0]
  def change
    create_table :crypto_items do |t|
      t.text :crypto_currency
      t.integer :amount
      t.text :date_of_purchase
      t.text :wallet_location

      t.timestamps
    end
  end
end
