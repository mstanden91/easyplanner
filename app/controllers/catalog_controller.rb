class CatalogController < ApplicationController
  
  def index
    #Filtro por categoria, por comuna y por el nombre y descripcion

    #Primero capturamos todas las categorías y comunas
    @categories = Category.all
    @comunnes = Comunne.all

    #Filtramos por comunas
    @comunne_id = params[:comunne_id]
    unless @comunne_id.nil?
      @comunne = Comunne.find(@comunne_id)
      @products = @comunne.products
    else 
      @products = Product.all
    end

    # Filtramos por categorias 
    @category_id = params[:category_id]
    @products = @products.where(category_id: @category_id) unless @category_id.nil?

    # Filtramos por nombre y descripción
    @products = @products.where("name like ?", "%#{params[:q]}%") || @products.where("description like ?", "%#{params[:q]}%") unless params[:q].nil?
         
  end
  
  

end
  