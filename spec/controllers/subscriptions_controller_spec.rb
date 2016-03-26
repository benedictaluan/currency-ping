require 'rails_helper'

RSpec.describe SubscriptionsController, type: :controller do
  describe 'routing' do
    it { expect(post: '/s').to route_to('subscriptions#create') }
  end

  describe 'POST #create' do
    before {
      base = create(:base)
      country = create(:country)
      @subscription_params = { base_id: base, country_id: country, user_attributes: { email: 'ben@example.com' } }
    }

    it 'redirects to root path' do
      post :create, subscription: @subscription_params
      expect(response).to redirect_to root_path
    end

    it 'creates a new subscription' do
      expect {
        post :create, subscription: @subscription_params
      }.to change(Subscription, :count).by(1)
    end
  end
end