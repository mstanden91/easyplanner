class CatalogController < ApplicationController
  
  #por categoría
  def index

     @categories = Category.all
     @comunnes = Comunne.all
     @category_id = params[:id]
     @comunne_id = params[:comunne_id]#no sirve
    
     @products = Product.all
     @products = @products.where(category_id: @category_id) unless @category_id.nil?
     
     @comuna = @comunnes.find(params[:id])
     @products = @comuna.products 

     # @products = @products.includes(:list).where(comunne_id: @comunne_id) unless @comunne_id.nil?
    
  end
  
  

end
  