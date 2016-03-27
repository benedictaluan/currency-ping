require 'rails_helper'

RSpec.describe SubscriptionsController, type: :controller do
  describe 'routing' do
    it { expect(get: '/').to route_to('subscriptions#home') }
    it { expect(post: '/s').to route_to('subscriptions#create') }
  end

  before {
    allow_any_instance_of(Subscription).to receive(:notify_user) { true }
  }

  describe 'GET #home' do
    it 'renders home template' do
      get :home
      expect(response).to render_template :home
    end

    it 'initializes a new subscription' do
      get :home
      expect(assigns(:subscription)).to be_a_new(Subscription)
    end

    it 'initializes a new user' do
      get :home
      subscription = assigns(:subscription)
      expect(subscription.user).to be_a_new(User)
    end
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