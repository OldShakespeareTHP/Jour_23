# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'



# # 100.times do 
#   # Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: specialty_list[rand(0..index)], zip_code: Faker::Address.zip_code)
#   # Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
# # end

# 50.times do
#   temp_doctor = Doctor.find_by(id: rand(1..100))
#   temp_patient = Patient.find_by(id: rand(1..100))
#   rand(1..4).times do 
#     Appointment.create(doctor: temp_doctor, patient: temp_patient, date: Faker::Time.between_dates(from: Date.today, to: Date.today + 90, period: :day, format: :long))
#   end
# end

# (1..100).each do |id_|
#   Doctor.find_by(id: id_).update(city: Faker::Address.city)
#   Patient.find_by(id: id_).update(city: Faker::Address.city)
# end

# specialty_list = ["Allergist", "Anaesthesiologist", "Andrologist", "Cardiologist", "Cardiac Electrophysiologist", "Dermatologist", "Emergency Room Doctors", "Endocrinologist", "Epidemiologist", "Family Medicine Physician", "Gastroenterologist", "Geriatrician", "Hyperbaric Physician", "Hematologist", "Hepatologist", "Immunologist", "Infectious Disease Specialist", "Intensivist", "Internal Medicine Specialist", "Maxillofacial Surgeon", "Medical Examiner", "Medical Geneticist", "Neonatologist", "Nephrologist", "Neurologist", "Neurosurgeon", "Nuclear Medicine Specialist", "Obstetrician/Gynecologist (OB/GYN)", "Occupational Medicine Specialist", "Oncologist", "Ophthalmologist", "Orthopedic Surgeon / Orthopedist", "Otolaryngologist", "Parasitologist", "Pathologist", "Perinatologist", "Periodontist", "Pediatrician", "Physiatrist", "Plastic Surgeon", "Psychiatrist", "Pulmonologist", "Radiologist", "Rheumatologist", " Sleep Disorders Specialist", "Spinal Cord Injury Specialist", "Sports Medicine Specialist", "Surgeon", "Thoracic Surgeon", "Urologist", "Vascular Surgeon", "Veterinarian", "Palliative Care Specialist", "Acupuncturist", "Audiologist", "Ayurvedic Practioner", "Chiropractor", "Diagnostician", "Homeopathic Doctor", "Microbiologist", "Naturopathic Doctor", "Pharmacist", "Physiotherapist", "Podiatrist", "Registered Massage Therapist"]
# specialty_list_len = specialty_list.length

# specialty_list_len.times do |ind|
#   temp_specialty = specialty_list[ind]
#   Specialty.create(title: temp_specialty)
# end

specialties_count = Specialty.count
doctor_count = Doctor.count
(1..doctor_count).each do |ind|
  nb_of_specialties = rand(1..3)
  nb_of_specialties.times do
    SpecialtiesToDoctorsJoin.create(doctor: Doctor.find_by(id: ind), specialty: Specialty.find_by(id: rand(1..specialties_count)))
  end
end

