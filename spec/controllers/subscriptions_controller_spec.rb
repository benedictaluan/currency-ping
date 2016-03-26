require 'rails_helper'

RSpec.describe SubscriptionsController, type: :controller do
  describe 'routing' do
    it { expect(post: '/s').to route_to('subscriptions#create') }
  end

  describe 'POST #create' do
    before {
      base = create(:base)
      country = create(:country)
    }

    it 'redirects to root path' do
      post :create
      expect(response).to redirect_to root_path
    end

    it 'creates a new subscription' do
      expect {
        post :create, { email: 'benedict.aluan@gmail.com', base: 1, country: 1 }    
      }.to change(Subscription, :count).by(1)
    end
  end
end