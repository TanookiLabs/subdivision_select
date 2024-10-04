class CreateAddresses < ActiveRecord::Migration[7.2]
  def change
    create_table :addresses do |t|
      t.string :title
      t.string :country
      t.string :subdivision

      t.timestamps
    end
  end
end
