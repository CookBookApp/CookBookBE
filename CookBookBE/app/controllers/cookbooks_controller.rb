class CookbooksController < ApplicationController
    def index
        @cookbooks = Cookbook.all 
        render json: @cookbooks
    end

    def create

    end

    def update

    end

    def destroy

    end
end
