class RecipeRatingsController < ApplicationController
    def index
        @recipe_ratings = Reciperating.all 
        render json: @recipe_ratings
    end

    def create
        @recipe_rating = Reciperating.create(recipe_rating_params)
        render json: @recipe_rating
    end
end

private

def recipe_rating_params
    params.permit(:user_id,:recipe_id,:rating)
end
