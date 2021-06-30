class DashboardController < ApplicationController
  def index
    @sales_mensuales = Sale.group_by_monthd(date: :asc).count
  end
end
