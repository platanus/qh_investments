class Movement < ApplicationRecord
  belongs_to :investment
end

# == Schema Information
#
# Table name: movements
#
#  id             :integer          not null, primary key
#  amount         :string
#  value          :string
#  operation_type :string
#  date           :string
#  investment_id  :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_movements_on_investment_id  (investment_id)
#
# Foreign Keys
#
#  fk_rails_...  (investment_id => investments.id)
#
