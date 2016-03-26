class PagesController < ApplicationController
  def home
    @subscription = Subscription.new
    @subscription.user = User.new
  end
end