class DashboardController < ApplicationController
  def index
    # @column_data = Sales.coffee_type.keys.map do |type|
    #   { name: type.capitalize, data: Expense.where(type: type).group_by_week(:date).sum(:amount)}
    #   end 
    @sales_grouped_by_month = Sale.group_by_month(:date, last: 13 ).order(date: :asc).sum(:price)

    @sales_grouped_by_number_of_sales = Sale.group_by_month(:date, last: 13 ).order(date: :asc).count

    @sales_grouped_by_month_average = Sale.group_by_month(:date, last: 13 ).order(date: :asc).average(:price)

    @origins_name = Sale.group_by_month(:date, last: 13 ).order(:origin).count()

  end
end
