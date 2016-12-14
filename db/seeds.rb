# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

offices = Office.create([{name: 'Pastor', description: 'Church Leader'}, {name: 'Admin', description: "Web admin"}, {name: 'Prayer Group', description: "Church prayer team"}])
