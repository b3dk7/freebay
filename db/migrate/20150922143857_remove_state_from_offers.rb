class RemoveStateFromOffers < ActiveRecord::Migration
  def change
    remove_column :offers, :state, :string
  end
end
