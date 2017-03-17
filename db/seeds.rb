# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Office.delete_all
# Event.delete_all
# Venue.delete_all
# Role.delete_all
# User.delete_all

offices = Office.create([{name: 'Pastor', description: 'Church Leader'}, {name: 'Admin', description: "Web admin"}, {name: 'Prayer Group', description: "Church prayer team"}])
#
# venues = Venue.create( [ {name: "Church Auditorium", address: "Torquay Boys' Grammar School, Shiphay Manor Drive,Torquay, TQ2 7EL"},
#   { name: "Kents Cavern", address: "89-91 Ilsham Road | Cavern House, Torquay TQ1 2JF, England" },
#   { name: "Online", address: "www.rccg.org" } ])

# events = Event.create( [ { name: "Sunday Service", description: "Thanksgiving", event_type: 1, start_date: DateTime.parse(DateTime.new(2017,1,8,9).to_s), end_date:DateTime.parse(DateTime.new(2017,1,8,12).to_s), minister: "Pastor Ajayi", venue_id: 7 },
#   { name: "Sunday Service", description: "Anointing Service", event_type: 1, start_date: DateTime.parse(DateTime.new(2017,1,15,9).to_s), end_date:DateTime.parse(DateTime.new(2017,1,15,12).to_s), minister: "Pastor Ajayi", venue_id: 7 },
#   { name: "Holy Ghost Service", description: "Holy Ghost Congress", event_type: 1, start_date: DateTime.parse(DateTime.new(2017,2,3,9).to_s), end_date:DateTime.parse(DateTime.new(2017,2,4,4).to_s), minister: "Pastor E. A. Adeboye", venue_id: 9 }
#     ])

# roles = Role.create([{name: 'Worker', description: 'Can read and create items. Can update and destroy own items'}, {name: 'Admin', description: "Can perform any CRUD operation on any resource"}])
# w1 = Office.create({name: "worker", description: "Church Worker"})
# u1 = User.create(first_name: "Tony", last_name: "Ajayi", email: "pastor@rccg.com", password: "pastor123", password_confirmation: "pastor123")
# u2 = User.create(first_name: "Mary", last_name: "Olatunde", email: "worker1@rccg.com", password: "worker123", password_confirmation: "worker123")
# u3 = User.create(first_name: "Kevin", last_name: "Brainard", email: "KBrainard@rccg.com", password: "Worker223", password_confirmation: "worker223")
# u4 = User.create(first_name: "Jack", last_name: "Wilson", email: "justme@example.com", password: "justme123", password_confirmation: "justme123")
