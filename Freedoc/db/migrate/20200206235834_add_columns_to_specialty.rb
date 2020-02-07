class AddColumnsToSpecialty < ActiveRecord::Migration[6.0]
  def change
    add_reference :specialties_to_doctors_joins, :doctor, foreign_key: true
    add_reference :specialties_to_doctors_joins, :specialty, foreign_key: true
  end
end
