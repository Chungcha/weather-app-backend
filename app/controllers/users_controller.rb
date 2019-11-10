class UsersController < ApplicationController

    def create
        user = User.create(username: params["username"])

        render json: user
    end

    def index
        users = User.all

        render html: users
    end

    def login
        
        user = User.find_by(username: params["username"])

        render json: user.favorites
    end

end
