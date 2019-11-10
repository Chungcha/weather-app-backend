class FavoritesController < ApplicationController

    def create
        favorite = Favorite.create(location_id: params[id], user_id: params[id])
    end

    def destroy
    end

end
