class ExchangeRate < ApplicationRecord
  belongs_to :base
  belongs_to :country
end
