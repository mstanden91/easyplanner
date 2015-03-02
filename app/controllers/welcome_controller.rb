class WelcomeController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
  end

  def indexcategory
    @products = Product.all
  end
end
