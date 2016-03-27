class SubscriptionsController < ApplicationController
  def home
    @subscription = Subscription.new
    @subscription.user = User.new
  end

  def create
    @subscription = Subscription.new(subscription_params(params))

    if @subscription.save
      flash[:notice] = t('notice.success_register')
      redirect_to root_path
    elsif @subscription.errors.messages.any?
      flash[:notice] = t('notice.success_details')
      redirect_to root_path
    else
      render :home
    end
  end

  private

  def subscription_params(params)
    params.require(:subscription).permit!
  end
end