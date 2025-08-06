defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    _price_after_discount = before_discount * (1 - (discount / 100))
  end

  def monthly_rate(hourly_rate, discount) do
    monthly_rate_before_discount = daily_rate(hourly_rate) * 22
    discounted_monthly_rate = apply_discount(monthly_rate_before_discount, discount)
    trunc(ceil(discounted_monthly_rate))
     
  end

  def days_in_budget(budget, hourly_rate, discount) do
    daily_rate = daily_rate(hourly_rate)
    days_with_discount = apply_discount(daily_rate, discount)
    days_worked = budget / days_with_discount
    Float.floor(days_worked, 1)
  end
end
