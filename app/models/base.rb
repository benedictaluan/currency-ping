class Base < ActiveRecord::Base
  has_many :exchange_rates
  has_many :countries, through: :exchange_rates
  has_many :subscriptions

  PROTOCOL = 'https://'
  RATES_API = 'secure.orbitremit.com/api/rates.json'
  PARAMS = 'static=true'

  def fetch_data
    response = RestClient.get "#{PROTOCOL}#{RATES_API}?#{PARAMS}&country=#{country_code}"
    data = JSON.parse(response.body)

    data['exchangeRates'].each do |rate|
      # Create countries if doesn't exists yet
      country = Country.find_or_create_by({
        country_code: rate['countryCode'].upcase!,
        currency_name: rate['currencyName'],
        currency_code: rate['currencyCode']
      })

      # Create exchange_rates
      exchange_rate = ExchangeRate.find_or_create_by({
        base: self,
        country: country,
        rate: rate['exchangeRate']
      })
    end
  end

  def self.update_data
    Base.all.map(&:fetch_data)
  end
end
