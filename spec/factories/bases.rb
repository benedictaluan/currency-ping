# encoding: UTF-8
require 'factory_girl'

FactoryGirl.define do
  factory :base do
    country_code      'NZ'
    country_name      'New Zealand'
    currency_code     'NZD'
    currency_name     'New Zealand Dollar'
  end
end