class User < ActiveRecord::Base
  has_many :subscriptions, dependent: :destroy

  validates :email, presence: { message: "Please enter your email address" }
end
