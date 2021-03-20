class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.boolean :approved
      t.boolean :declined
      t.integer :price
      t.string :perks
      t.references :user, null: false, foreign_key: true
      t.references :auction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
