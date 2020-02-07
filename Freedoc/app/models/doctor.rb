class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments

  has_many :specialties_to_doctors_joins
  has_many :specialties, through: :specialties_to_doctors_joins
end
