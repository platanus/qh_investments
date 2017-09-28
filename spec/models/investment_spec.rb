require 'rails_helper'

RSpec.describe Investment, type: :model do
  describe "Relationships" do
    it { should belong_to(:admin_user) }
  end
end
