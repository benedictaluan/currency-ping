require 'rails_helper'

RSpec.describe 'routing to subscriptions', type: :routing do
  it 'routes /s/ to subscriptions#create' do
    expect(post:  '/s').to route_to(
      :controller => 'subscriptions',
      :action => 'create'
    )
  end
end