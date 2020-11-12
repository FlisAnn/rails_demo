Rails.application.routes.draw do
  root controller: :articles, action: :index  
  resources :articles, only: [:show, :new, :create] # get a single item, get a list of item is index action
  # new= show form, create= create in db
end
