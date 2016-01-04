class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :title
      t.text :description
      t.text :tags
      t.string :image
      t.text :contact_information
      t.string :country
      t.string :state
      t.string :city
      t.string :city_quater
      t.timestamps null: false
    end
  end
end
