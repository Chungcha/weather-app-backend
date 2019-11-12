class FavoritesController < ApplicationController

    def create
        favorite = Favorite.create(location_id: params[:woeId], user_id: params[:userId])

        render json: favorite
    end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy
    end

end
