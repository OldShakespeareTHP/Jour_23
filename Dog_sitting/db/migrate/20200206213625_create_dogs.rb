class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string "name"
      t.string "specie"

      t.belongs_to :city, index: true #cette ligne rajoute la référence à la table city
      t.timestamps
    end
  end
end
