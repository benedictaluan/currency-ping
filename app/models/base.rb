class Base < ApplicationRecord
  has_many :exchange_rates
  has_many :countries, through: :exchange_rates
  has_many :jobs
end
