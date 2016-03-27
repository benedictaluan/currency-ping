# encoding: UTF-8
require 'factory_girl'

FactoryGirl.define do
  factory :exchange_rate do
    base
    country
    rate      50
  end
end