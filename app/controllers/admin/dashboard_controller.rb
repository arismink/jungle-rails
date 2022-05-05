class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: ENV["HTTP_BASIC_AUTH_USER"], password: ENV["HTTP_BASIC_AUTH_PASSWORD"]

  def show
  end

  def count_products
    # display how many products are in database
  end

  def count_categories
    # display how many categories are in database
  end
end
