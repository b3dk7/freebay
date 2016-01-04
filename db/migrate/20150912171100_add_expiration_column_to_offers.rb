class AddExpirationColumnToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :expiration, :date
  end
end
