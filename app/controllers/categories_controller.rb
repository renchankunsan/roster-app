class CategoriesController < ApplicationController
    def new
        @categories = Category.all
    end
    
    def create
        category = Category.create(name: params[:categories][:name])
        category.save
        redirect_to "/rosters"
    end
end
