# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
countries = [
  { country_code: 'nz', country_name: 'New Zealand', currency_code: 'NZD', currency_name: 'New Zealand Dollar' },
  { country_code: 'au', country_name: 'Australia', currency_code: 'AUD', currency_name: 'Australian Dollar' },
  { country_code: 'uk', country_name: 'United Kingdom', currency_code: 'GBP', currency_name: 'British Pound Sterling' }
]

countries.each do |country|
  base = Base.find_or_create_by(country)
  p "Base country added: #{base.country_name}" if base.persisted?
end