class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all.reverse()
        render json: @recipes
    end

    def show
        @recipe = Recipe.find(params[:id])
        render json: @recipe
    end

    def create
        puts params
        @recipe = Recipe.create(recipe_params)
        puts @recipe
        params['keywords'].each do |keyw|
            @keyword = Keyword.find { |key| key.keyword == keyw}
            RecipeKeyword.create(recipe: @recipe, keyword: @keyword)
        end

        params['ingredients'].each do |ingredient| 
            Ingredient.create(ingredient: ingredient, recipe: @recipe)
        end

        params['steps'].each do |step|
            Step.create(content: step, recipe: @recipe)
        end

        render json: @recipe
    end

    def destroy
        @recipe = Recipe.find(params[:id])
        @recipe.destroy
    end
end

private

def recipe_params
    params.permit(:description,:image,:prep_time,:cook_time,:total_time,:user_id)
end
