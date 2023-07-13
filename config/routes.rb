Rails.application.routes.draw do
  root 'about#index'
  get 'about', to: 'about#index'
  get 'data_collection', to: 'data_collection#index'
  get 'data_entries/:id', to: 'data_entries#show', as: 'data_entry'
  get 'data_collection/index'


  resources :authors, only: [:index, :show] do
    resources :works, only: [:index]
  end


end
