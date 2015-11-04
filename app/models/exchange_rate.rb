class ExchangeRate < ActiveRecord::Base
  belongs_to :base
  belongs_to :country
end
