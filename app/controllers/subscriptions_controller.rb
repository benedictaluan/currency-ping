class SubscriptionsController < ApplicationController
  def create
    @subscription = Subscription.new(subscription_params(params))

    if @subscription.save
      flash[:notice] = t('notice.success')
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