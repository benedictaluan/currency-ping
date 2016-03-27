class Subscription < ActiveRecord::Base
  belongs_to :base
  belongs_to :country
  belongs_to :user

  validates :base, presence: true
  validates :country, presence: true
  validates :user, presence: true

  validates_uniqueness_of :user_id, scope: [:base_id, :country_id], message: 'You already have this subscription' 

  accepts_nested_attributes_for :user

  after_create :notify_user

  def user_attributes=(value)
    self.user = User.find_or_create_by(value)
  end

  def notify_user
    exchange_rate = ExchangeRate.where(base: base, country: country).first
    UserMailer.email_alert(exchange_rate, self).deliver_now
  end
end
