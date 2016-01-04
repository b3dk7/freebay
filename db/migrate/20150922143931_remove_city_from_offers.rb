class RemoveCityFromOffers < ActiveRecord::Migration
  def change
    remove_column :offers, :city, :string
  end
end
