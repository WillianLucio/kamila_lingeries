class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :profile, foreign_key: true
      t.string :city
      t.string :neighborhood
      t.string :street
      t.string :number
      t.string :complement

      t.timestamps
    end
  end
end
