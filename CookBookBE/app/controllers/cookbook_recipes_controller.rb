class CookbookRecipesController < ApplicationController
    def index
        @cookbookrec = CookbookRecipe.all
        render json: @cookbookrec
    end

    def create
        @cookbookrec = CookbookRecipe.create(cookbook_recipe_params)
        render json: @cookbookrec
    end

    def destroy

    end
end

private

def cookbook_recipe_params
    params.permit(:cookbook_id,:recipe_id)
end