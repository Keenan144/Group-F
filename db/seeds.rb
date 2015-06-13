# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'
(5).times do 
SalesOrder.create(
due_date: Faker::Date.forward(23),
bill_to: Faker::Address.street_name,
requestor_name: Faker::Name.name,
title: Faker::Company.name,
address: Faker::Address.street_address,
email: Faker::Internet.email,
origin_port: Faker::Address.country_code,
mode: "ground",
service_level: "high",
shipper_name: "DWMorgan",
shipper_address: Faker::Address.street_address,
importer_of_record: "USA",
customs_origin_broker: Faker::Address.country_code,
customs_dest_broker: Faker::Address.country_code,
origin_airport: Faker::Address.country_code,
actual_weight: Faker::Number.number(3),
uom: Faker::Number.number(11),
pcs: Faker::Number.number(2),
dimensions_length: Faker::Number.number(1),
dimensions_width: Faker::Number.number(1),
dimensions_height: Faker::Number.number(1),
chargeable_weight: Faker::Number.number(3) 
  )
end