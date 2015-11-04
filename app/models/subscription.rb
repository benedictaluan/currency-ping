class Subscription < ActiveRecord::Base
  belongs_to :base
  belongs_to :country
  belongs_to :user
end
