# encoding: UTF-8
require 'factory_girl'

FactoryGirl.define do
  factory :subscription do
    user      user
    base      base
    country   country
  end
end