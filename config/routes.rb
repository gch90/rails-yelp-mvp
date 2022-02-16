Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end

# Prefix  Verb    URI Pattern            Controller#Action
# restaurants        GET     /restaurants           restaurants#index
#                    POST    /restaurants           restaurants#create
# new_restaurant     GET     /restaurants/new       restaurants#new
# edit_restaurant    GET     /restaurants/:id/edit  restaurants#edit
# restaurant         GET     /restaurants/:id       restaurants#show
#                    PATCH   /restaurants/:id       restaurants#update
#                    DELETE  /restaurants/:id       restaurants#destroy
