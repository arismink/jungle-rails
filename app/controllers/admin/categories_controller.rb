class Admin::CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
  end

  def category_params
    params.require(:category).permit(
      :name
    )
  end

end
