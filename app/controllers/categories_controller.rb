class CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end
    
    def create
        category = Category.create(name: params[:categories][:name])
        category.save
        redirect_to "/categories"
    end
    
    def destroy
        category = Category.find(params[:id])
        category.destroy
        redirect_to "/categories"
    end
end
