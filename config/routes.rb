Rails.application.routes.draw do

  resources :campers, only: [:index, :show, :new, :create, :edit, :update]
  resources :activities, only: [:index, :show, :new, :create, :edit, :update]
  resources :signups, only: [:index, :show, :new, :create, :edit, :update]



  # get 'signups/index'
  # get 'signups/show'
  # get 'signups/new'
  # get 'signups/edit'
  # get '/campers', to: "campers#index", as: "campers"
  # get '/activities', to: "activities#index", as: "activities"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
