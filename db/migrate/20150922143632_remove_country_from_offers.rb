class RemoveCountryFromOffers < ActiveRecord::Migration
  def change
    remove_column :offers, :country, :string
  end
end
