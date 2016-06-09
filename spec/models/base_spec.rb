require 'rails_helper'

RSpec.describe Base, type: :model do
  it { should have_many(:exchange_rates) }
  it { should have_many(:countries) }
  it { should have_many(:jobs) }
end
