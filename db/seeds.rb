# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

#Creation ville
10.times do |index|
    city=City.create(name: Faker::Nation.capital_city)
end

#Creation Doctor
10.times do |index|
    doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::Internet.email, postal_code:75000, city_id: rand(1..10))
end


#Creation Patient
10.times do |index|
    patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand(1..10))
end

#Creation Appointment
10.times do |index|
    appointment = Appointment.create(date: DateTime.new(2021,2,3), doctor_id: rand(1..10), patient_id: rand(1..10), city_id: rand(1..10))
end

#Creation Appointment
10.times do |index|
    specialty = Specialty.create(name: Faker::Name.first_name)
end


#Creation Appointment
10.times do |index|
    diplom = Diplom.create(name: Faker::Name.first_name, doctor_id: rand(1..10), specialty_id: rand(1..10))
end