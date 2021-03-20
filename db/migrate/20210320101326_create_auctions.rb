class CreateAuctions < ActiveRecord::Migration[6.0]
  def change
    create_table :auctions do |t|
      t.integer :start_price
      t.integer :estimated_volume
      t.string :contract_length
      t.string :category

      t.timestamps
    end
  end
end
