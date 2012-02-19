SampleApp::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy'

  match '/signup', to: 'users#new'
  match '/home', to: 'static_pages#home'
  match '/contact', to: 'static_pages#contact'
  match '/about', to: 'static_pages#about'
  match '/help', to: 'static_pages#help'

  root to: 'static_pages#home'
end
