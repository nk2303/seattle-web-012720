# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Conductor.create(name:"Gerard Schwarz")
Orchestra.create(name:"Seattle Philharmonic",classification:"Philharmonic",conductor_id:Conductor.first.id)
Member.create(name:"Luke Fitzpatrick",role:"Concertmaster")
Instrument.create(name:"Violin", member_id:Member.first.id)
Orchestramember.create(member_id:Member.first.id,orchestra_id:Orchestra.first.id)
Conductor.create(name:"David Alexander Rahbee")
Orchestra.create(name:"University of Washington Chamber Orchestra",classification:"Chamber",conductor_id:Conductor.find_by(name:"David Alexander Rahbee").id)

Orchestramember.create(member_id:Member.find_by(name:"Luke Fitzpatrick").id,orchestra_id:Orchestra.find_by(name:"University of Washington Chamber Orchestra").id)
Instrument.create(name:"Viola", member_id:Member.find_by(name:"Luke Fitzpatrick").id)
Instrument.create(name:"Cello", member_id:Member.find_by(name:"Luke Fitzpatrick").id)
Instrument.create(name:"Contrabass", member_id:Member.find_by(name:"Luke Fitzpatrick").id)
