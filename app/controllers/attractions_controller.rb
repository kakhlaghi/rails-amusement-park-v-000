class AttractionsController < ApplicationController

  def show 
end 
  
  def new 
end

  def create
    @attraction = Attraction.create(attraction_params)
  end
  
  def update
    
  end
  
  
  private
  
  def attraction_params
      params.require(:attraction).permit(
        :name,
        :min_height,
        :happiness_rating,
        :nausea_rating,
        :tickets
      )
    end
  

end
