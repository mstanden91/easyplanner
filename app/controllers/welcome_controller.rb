class WelcomeController < ApplicationController
  def index
    
    @categories = Category.all
    if params[:q].nil?
      @products = Product.all
    else
      @products = Product.where("name like ?", "%#{params[:q]}%") || Product.where("description like ?", "%#{params[:q]}%")
    end
  end

  def indexcategory
    @products = Product.all
  end

  def detail
    @product = Product.find(params[:id])
  end

end
