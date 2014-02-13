# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' },
#                         { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel',
#                 city: cities.first)

post_codes = [
  "W11 4BP",
  "SE8 3FG",
  "SE17 2HT",
  "N70SU",
  "E9 6BQ",
  "E164NP",
  "W11 4BW",
  "N7 8AB",
  "SW2 4BL",
  "E1 8RZ",
  "EC3R 6EN",
  "N12AR",
  "SE5 9BU",
  "SE5 9LB",
  "NW1 4EG",
  "NW43UG",
  "E2 7LX",
  "N7 9RJ",
  "SW49EU",
  "SE1 4QQ",
  "W12 8JF",
  "SE11 4AD",
  "SE16 4DG",
  "NW5 1LB",
  "SW11 2JZ",
  "E5 0LF",
  "E5 8DJ",
  "SW25BB",
  "E8 2ER",
  "SE13 6SY",
  "SW59QR",
  "SW46AD",
  "SW11 3HU",
  "E1 6QL",
  "SE1 4YS",
  "N4 1JX",
  "SW18 2HG",
  "E27PH",
  "TW13 4GG",
  "SW20 8PR",
  "SE14 6RN",
  "SE5 7LW",
  "W2 1LF",
  "EC1M3JB",
  "SE135DW",
  "E8 2AG",
  "SE9 2EU",
  "SE61BN",
  "N1 4PU",
  "SW9 8AA"
]
puts "Populating addresses: start \n"
#create all the addresses
post_codes.each { |code| Delivery.create!({post_code: code}) }
puts "Populating addresses: done \n"
