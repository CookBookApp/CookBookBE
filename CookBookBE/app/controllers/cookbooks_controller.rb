class CookbooksController < ApplicationController
    def index
        @cookbooks = Cookbook.all 
        render json: @cookbooks, include: ['user','recipes','recipes.ingredients','recipes.steps']
    end

    def create
        @cookbook = Cookbook.create(cookbook_params)
        render json: @cookbook
    end

    def update

    end

    def destroy

    end
end

private

def cookbook_params
    params.permit(:user_id, :image, :title, :description)
end
