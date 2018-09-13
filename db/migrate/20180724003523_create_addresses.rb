class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :country_id
      t.integer :state_id
      t.string :location
      t.string :name
      t.string :phone
      t.string :phone_2

      t.timestamps
    end
  end
end
