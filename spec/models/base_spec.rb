require 'rails_helper'

RSpec.describe ::Base, type: :model do
  it { should have_many(:exchange_rates) }
  it { should have_many(:countries) }
  it { should have_many(:subscriptions) }

  describe '#fetch_data' do
  end

  describe '.update_data' do
  end
end