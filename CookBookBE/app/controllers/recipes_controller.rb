class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all
        render json: @recipes
    end

    def show
        @recipe = Recipe.find(params[:id])
        render json: @recipe
    end

    def create
        
    end

    def destroy
        @recipe = Recipe.find(params[:id])
        @recipe.destroy
    end
end
