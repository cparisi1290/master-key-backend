class CreateRepairs < ActiveRecord::Migration[6.1]
  def change
    create_table :repairs do |t|
      t.string :room
      t.string :broken_item
      t.float :cost
      t.datetime :date_completed
      t.boolean :closed?
      t.integer :property_id

      t.timestamps
    end
  end
end
