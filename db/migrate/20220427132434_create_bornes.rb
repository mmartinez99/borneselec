class CreateBornes < ActiveRecord::Migration[7.0]
  def change
    create_table :bornes do |t|
      t.string :Adresse
      t.string :Ville
      t.integer :CodePostal
      t.float :Latitude
      t.float :Longitude
      t.float :Tarif

      t.timestamps
    end
  end
end
