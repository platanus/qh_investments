require 'rails_helper'

RSpec.describe Movement, type: :model do
  describe "Relationships" do
    it { should belong_to(:investment) }
  end
end
