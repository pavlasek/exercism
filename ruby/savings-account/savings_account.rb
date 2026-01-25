# frozen_string_literal: true

# module that count the value on a savings account
module SavingsAccount
  def self.interest_rate(balance)
    if balance.negative?
      3.213
    elsif balance < 1000
      0.5
    elsif balance < 5000
      1.621
    else
      2.475
    end
  end

  def self.annual_balance_update(balance)
    (interest_rate(balance) / 100.0 + 1) * balance
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    number_of_years = 0

    while current_balance <= desired_balance
      current_balance = annual_balance_update(current_balance)
      number_of_years += 1
    end

    number_of_years
  end
end
