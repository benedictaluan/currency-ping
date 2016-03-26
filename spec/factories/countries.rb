# encoding: UTF-8
require 'factory_girl'

FactoryGirl.define do
  factory :country do
    country_code      'PH'
    country_name      'Philippines'
    currency_code     'PHP'
    currency_name     'Philippine Peso'
  end
end