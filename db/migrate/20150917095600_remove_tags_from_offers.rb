class RemoveTagsFromOffers < ActiveRecord::Migration
  def change
    remove_column :offers, :tags, :text
  end
end
