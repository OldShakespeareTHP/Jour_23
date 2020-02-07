class CreateSpecialtiesToDoctorsJoins < ActiveRecord::Migration[6.0]
  def change
    create_table :specialties_to_doctors_joins do |t|

      t.timestamps
    end
  end
end
