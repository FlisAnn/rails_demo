Rails.application.routes.draw do
  root controller: :articles, action: :index  
  resources :articles, only: [:show] #get a single item, get a list of item is index action
end
