class BalanceService
  def initialize(user)
    @user = user
  end

  def total_balance
    sum = 0
    Investment.where(admin_user: @user)
              .each do |investment|
                sum += asset_balance(investment)
              end
    sum
  end

  def asset_balance(investment)
    YahooService.new.price(investment.code, Date.current).to_f * investment_amount(investment).to_f
  end

  def investment_amount(investment)
    Movement.where(investment: investment).map do |movement|
      movement.amount * (-1 if movement.operation_type == "sell")
    end.sum
  end

end
