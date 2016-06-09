class Job < ApplicationRecord
  belongs_to :base
  belongs_to :country
  belongs_to :user
end
