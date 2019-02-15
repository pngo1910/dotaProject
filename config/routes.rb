Rails.application.routes.draw do
  get 'teams/index'
  get 'teams/show'
  resources :abouts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
