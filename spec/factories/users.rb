# encoding: UTF-8
require 'factory_girl'

FactoryGirl.define do
  factory :user do
    first_name    'Ben'
    last_name     'Lara'
    email         'benedict.aluan@gmail.com'
  end
end