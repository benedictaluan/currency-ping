class Country < ApplicationRecord
  has_many :exchange_rates
  has_many :bases, through: :exchange_rates
  has_many :jobs
end
