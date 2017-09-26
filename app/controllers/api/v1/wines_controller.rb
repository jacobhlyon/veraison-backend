class Api::V1::WinesController < ApplicationController

	def index
		wines = Wine.all
		render json: wines
	end

	def create
	    wine = Wine.create(wine_params)
	    render json: wine
	  end


  private

	  def wine_params
	    params.require(:data).permit(:name, :vintage, :varietal, :blend, :wine_color, :image, :winery, :snooth_rank, :region)
	  end

end