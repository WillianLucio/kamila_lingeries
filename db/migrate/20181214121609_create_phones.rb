class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.references :profile, foreign_key: true
      t.string :operator
      t.string :number
      t.integer :type

      t.timestamps
    end
  end
end
