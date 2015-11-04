class ExchangeRate < ActiveRecord::Base
  belongs_to :base
  belongs_to :country

  before_save :notify_users

  def notify_users
    Subscription.where({
      country: self.country.id,
      base: self.base.id
    }).find_each do |subscription|
      UserMailer.email_alert(self, subscription).deliver_now
    end
  end
end
