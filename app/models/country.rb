class Country < ActiveRecord::Base
  has_many :exchange_rates
  has_many :bases, through: :exchange_rates
end
