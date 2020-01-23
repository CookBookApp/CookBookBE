Rails.application.routes.draw do
  resources :recipe_ratings
  resources :recipe_comments
  resources :recipe_keywords
  resources :keywords
  resources :steps
  resources :ingredients
  resources :users
  resources :cookbook_recipes
  resources :cookbooks
  resources :recipes

  post '/login', to: 'login#create'
  post '/users', to: 'user#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
