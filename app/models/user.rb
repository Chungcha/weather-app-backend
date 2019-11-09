class User < ApplicationRecord

    has_many :favorites

    def index
        users = User.all

        render JSON 
    end

end
