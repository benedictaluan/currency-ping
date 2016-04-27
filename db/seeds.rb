# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bases = Base.create([
  { country_code: 'nz', country_name: 'New Zealand', currency_code: 'NZD', currency_name: 'New Zealand Dollar' },
  { country_code: 'au', country_name: 'Australia', currency_code: 'AUD', currency_name: 'Australian Dollar' }
])