class UsersController < ApplicationController

    def index
        users = User.all

        render html: users
    end

    def create
        user = User.create(username: params["username"])

        render json: user
    end

    def login
        user = User.find_by(username: params["username"])

        render json: user.to_json(serialize)
    end

    private 

    def serialize
        { :include => { :favorites => {
                        :except => [:created_at, :updated_at]
                        }},
        :only => [:username, :id]
        }
    end

    private 

    def serialize
        { :include => { :favorites => {
                        :except => [:created_at, :updated_at]
                        }},
        :only => [:username, :id]
        }
    end
end
