class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :street
      t.string :flat_number
      t.string :district
      t.string :city
      t.float :latitude
      t.float :longitude
      t.text :details

      t.timestamps
    end
  end
end
