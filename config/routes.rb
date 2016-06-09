Rails.application.routes.draw do
  root 'landings#index'
  devise_for :users
  
  # GET Routes
  get 'bio', to: 'landings#bio'

  # Resources Routes
  resources :photos, except: [:show, :new]
end
