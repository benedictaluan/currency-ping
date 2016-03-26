require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:subscriptions) }

  it 'deletes the associated subscriptions' do
    user = create(:user)
    subscription1 = create(:subscription, user: user)
    subscription2 = create(:subscription, user: user)
    
    user.destroy
    expect(Subscription.count).to eq 0
  end 
end