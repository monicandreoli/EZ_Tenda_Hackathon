class RenameEnddateInAuctions < ActiveRecord::Migration[6.0]
  def change
    rename_column :auctions, :end_date, :deadline
  end
end
