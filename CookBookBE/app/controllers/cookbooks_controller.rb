class CookbooksController < ApplicationController
    def index
        @cookbooks = Cookbook.all 
        render json: @cookbooks, include: ['user','recipes','recipes.ingredients','recipes.steps']
    end

    def create

    end

    def update

    end

    def destroy

    end
end
