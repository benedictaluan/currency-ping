require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe 'routing' do
    it { expect(get: '/').to route_to('pages#home') }
  end

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
end