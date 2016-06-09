Rails.application.routes.draw do
  root 'landings#index'
  mount Attachinary::Engine => "/attachinary"
  devise_for :users

  # GET Routes
  get 'bio', to: 'landings#bio'

  # Resources Routes
  resources :photos, except: [:show, :new]
end
