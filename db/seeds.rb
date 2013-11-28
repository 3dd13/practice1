# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


rares = Rare.create([
{
  rare_name: "bob",
  rare_family: "tall",
  longitude: 7.88,
  latitude: 3.33,
  verified: true
},
{
  rare_name: "fred",
  rare_family: "short",
  longitude: 9.01,
  latitude: 6,
  verified: false
}
  ])
