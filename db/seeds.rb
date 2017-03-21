# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email: "a@d.min",
  password: "admin",
  permit: true
  )

Admin.create!(
  email: "a@d.min2",
  password: "admin2",
  permit: false
  )

Company.create!(
  email: "c@o.mpany",
  password: "company",
  permit: true
  )

Company.create!(
  email: "c@o.mpany2",
  password: "company2",
  permit: false
  )

