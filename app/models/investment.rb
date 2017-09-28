class Investment < ApplicationRecord
  belongs_to :admin_user
  extend Enumerize

  enumerize :investment_type, in: [:stock, :etf, :bond]

  def to_s
    code
  end
end

# == Schema Information
#
# Table name: investments
#
#  id              :integer          not null, primary key
#  code            :string
#  description     :text
#  investment_type :text
#  admin_user_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_investments_on_admin_user_id  (admin_user_id)
#
# Foreign Keys
#
#  fk_rails_...  (admin_user_id => admin_users.id)
#
