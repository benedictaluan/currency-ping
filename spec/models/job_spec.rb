require 'rails_helper'

RSpec.describe Job, type: :model do
  it { should belong_to(:base) }
  it { should belong_to(:country) }
  it { should belong_to(:user) }
end
