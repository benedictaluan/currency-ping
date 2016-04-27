class SubscriptionsController < ApplicationController
  def home
    @subscription = Subscription.new
    @subscription.user = User.new
  end

  def create
    @subscription = Subscription.new(subscription_params(params))

    if verify_recaptcha(model: @subscription) && @subscription.save
      flash[:notice] = t('notice.success_register')
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