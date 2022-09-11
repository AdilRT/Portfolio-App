Rails.application.routes.draw do
  devise_for :users
  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  # get 'pages/home'
  root "pages#home"

  # get 'pages/about'
  get 'about', to: 'pages#about'

  # get 'pages/contact'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
end
