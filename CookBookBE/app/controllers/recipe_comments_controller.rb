class RecipeCommentsController < ApplicationController
    def index
        @recipe_comments = RecipeComment.all 
        render json: @recipe_comments
    end

    def create
        @recipe_comment = RecipeComment.create(recipe_comment_params)
        render json: @recipe_comment
    end
end

private

def recipe_comment_params
    params.permit(:user_id,:recipe_id,:content)
end