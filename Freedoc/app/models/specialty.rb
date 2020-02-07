class Specialty < ApplicationRecord
  has_many :specialties, through: :specialties_to_doctors_joins
  has_many :specialties_to_doctors_joins
end
