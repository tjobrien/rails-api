Rails.application.routes.draw do
  
  get 'pipeline/index'
  get 'pipeline/show'
  get 'maps/index'
  get 'clicks/index'
  get 'clicks/create'

  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  mount ForestLiana::Engine => '/forest'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  resources :videos
  resources :clicks
  resources :sms
  resources :stripe
  resources :maps
end
