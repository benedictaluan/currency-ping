class SubscriptionsController < ApplicationController
  def create
    flash[:notice] = t('notice.success')
    redirect_to root_path
  end
end