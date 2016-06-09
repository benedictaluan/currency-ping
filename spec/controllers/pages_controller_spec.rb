require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe 'GET #home' do
    it 'returns http success' do
      get :home
      expect(response).to have_http_status(:success)
    end

    it 'renders home template' do
      get :home
      expect(response).to render_template(:home)
    end

    it 'assigns new job' do
      get :home
      expect(assigns(:job)).to be_a_new(Job)
    end
  end

end
