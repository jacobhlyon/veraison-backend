class Api::V1::WinesController < ApplicationController

	def index
		wines = Wine.all
		render json: wines
	end

	def create
	    wine = Wine.find_or_create_by(wine_params)
	    render json: wine
	end

	def update
		wine = Wine.find_by(wine_params)
		byebug
		wine.wine_color = params[:wine_color]

		render json: wine
	end


  private

	  def wine_params
	    params.require(:data).permit(:name, :vintage, :varietal, :blend, :wine_color, :image, :winery, :snooth_rank, :region)
	  end

end