class CatalogController < ApplicationController
  
  #por categoría
  def index

     @categories = Category.all
     @comunnes = Comunne.all
     @category_id = params[:id]
     @comunne_id = params[:comunne_id]
     @list = List.

     @products = Product.all
     @products = @products.where(category_id: @category_id) unless @category_id.nil?
     @products = Product.where(comunne_id: @comunne_id) unless @comune_id.nil?
  
  end


end
  