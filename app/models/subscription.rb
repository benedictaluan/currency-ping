class Subscription < ActiveRecord::Base
  belongs_to :base
  belongs_to :country
  belongs_to :user

  validates :base, presence: true
  validates :country, presence: true
  validates :user, presence: true

  accepts_nested_attributes_for :user

  def user_attributes=(value)
    self.user = User.find_or_create_by(value)
  end
end
