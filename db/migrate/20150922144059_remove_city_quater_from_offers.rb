class RemoveCityQuaterFromOffers < ActiveRecord::Migration
  def change
    remove_column :offers, :city_quater, :string
  end
end
