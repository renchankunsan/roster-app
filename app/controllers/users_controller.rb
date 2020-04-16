class UsersController < ApplicationController
    def login
    end
    
    def new
    end
    
    def create
        User.create(name:params["users"]["name"],email:params["users"]["email"],password_digest:params[:password])
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
end