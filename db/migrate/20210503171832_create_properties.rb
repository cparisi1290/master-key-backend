class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :bedrooms
      t.string :bathrooms
      t.string :image
      t.string :occupied?
      t.string :pets_allowed?
      t.string :rent_amount
      t.string :user_id

      t.timestamps
    end
  end
end
