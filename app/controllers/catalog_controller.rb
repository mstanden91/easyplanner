class CatalogController < ApplicationController
  
  def index
     @categories = Category.all
     @category_id = params[:id]
     @products = Category.find(@category_id).products
  end
end
  