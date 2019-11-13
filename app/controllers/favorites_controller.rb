class FavoritesController < ApplicationController

    def create
        favorite = Favorite.create(location_id: params[:location_id], user_id: params[:user_id])
        render json: favorite
    end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy
    end

end
