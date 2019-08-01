# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Réinitialisation des BDD
# Doctor.destroy_all
# Patient.destroy_all
# Appointment.destroy_all

# #Populate Doctor DB
# 20.times do
#    Doctor.create!(first_name: Faker::Name.first_name, 
#     last_name: Faker::Name.last_name, 
#     specialty: Faker::Job.position,
#     zip_code: Faker::Address.zip)
# end

# #Populate Patient DB
# 100.times do
#   Patient.create!(first_name: Faker::Name.first_name, 
#     last_name: Faker::Name.last_name)
# end

#Populate Appointment DB
200.times do
  Appointment.create!(datetime:Faker::Time.between(from: DateTime.now - 730, to: DateTime.now),
  patient: Patient.find(rand(Patient.first.id..Patient.last.id)),
  doctor: Doctor.find(rand(Doctor.first.id..Doctor.last.id)))
end