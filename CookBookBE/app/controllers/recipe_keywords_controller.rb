class RecipeKeywordsController < ApplicationController
    def index
        @recipekeywords = RecipeKeyword.all
        render json: @recipekeywords, include: ['recipe', 'recipe.user', 'keyword']
    end
end
