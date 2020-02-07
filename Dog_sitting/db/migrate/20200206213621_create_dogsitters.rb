class CreateDogsitters < ActiveRecord::Migration[6.0]
  def change
    create_table :dogsitters do |t|
      t.string "name"
      t.integer "age"
      t.belongs_to :city, index: true #cette ligne rajoute la référence à la table city
      t.timestamps
    end
  end
end
