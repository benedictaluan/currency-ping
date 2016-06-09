require 'rails_helper'

RSpec.describe ExchangeRate, type: :model do
  it { should belong_to(:base) }
  it { should belong_to(:country) }
end
