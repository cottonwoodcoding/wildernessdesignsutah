Rails.application.routes.draw do
  root 'instagram#index'
  devise_for :users

  # GET Routes
  get 'bio', to: 'landings#bio'
  # get 'landings', to: 'landings#index'
  get 'instagram', to: 'instagram#index'

  # Resources Routes
  # resources :photos, except: [:show, :new]
end
