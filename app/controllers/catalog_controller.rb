class CatalogController < ApplicationController
  
  #por categoría
  def index
      
     @categories = Category.all
     @comunnes = Comunne.all
     @category_id = params[:category_id]
     @comunne_id = params[:comunne_id]
     unless @comunne_id.nil?
      @comunne = Comunne.find(@comunne_id)
      @products = @comunne.products
      else 
      @products = Product.all
     end

     @products = @products.where(category_id: @category_id) unless @category_id.nil?

    if params[:q].nil?
      @products = Product.all
    else
      @products = Product.where("name like ?", "%#{params[:q]}%") && Product.where("description like ?", "%#{params[:q]}%")
    end
     
     # @products = @comuna.products 

     # @products = @products.includes(:list).where(comunne_id: @comunne_id) unless @comunne_id.nil?
    
  end
  
  

end
  