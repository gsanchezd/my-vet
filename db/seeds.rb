# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Veterinary.delete_all

v = Veterinary.create!(name: "Veterinaria de Oriente")
User.create!(name: "Efrain", email: "efrabmtz@hotmail.com", password: "bienvenido", password_confirmation: "bienvenido", veterinary: v)
Customer.create!(name: "edgar", email: "a@b.com", phone: "2121211", veterinary: v)
Customer.create!(name: "luis", email: "c@d.com", phone: "2121211", veterinary: v)

v2 = Veterinary.create!(name: "Hospital del Sur")
User.create!(name: "Juan", email: "juan@me.com", password: "12345678", password_confirmation: "12345678", veterinary: v2)
Customer.create!(name: "pepe", email: "e@f.com", phone: "2121211", veterinary: v2)
