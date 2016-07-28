class PagesController < ApplicationController
  def index
     @q = params[:q]
    if @q
      @distritos = Distrito.where(:nombre => @q)
    else
      @distritos = Distrito.all
    end
  end

  def nosotros

  end

  def faq
  end

  def reserva
  end

  def confirmacion
  end

  def search
      @q = params[:q]
    if @q
   #   @parkings = Parking.where(:distrito => @q)
   
   @parkings =Parking.select("direccion").joins(:distrito).where({:distrito_id =>  1}) 
   #@parkings =Parking.select("direccion").joins(:distrito).where(:distritos => {:name =>  @q}) 
   
   
   
    #  @parkings = Parking.joins(:distritos).where(:distritos => { name: @q } ).all
                         #.select("direccion")
                         
                        # Company.includes(:persons).where(:persons => { active: true } ).all
                      
                         
      
    else
      @parkings = Parking.all
    end
  end
end
