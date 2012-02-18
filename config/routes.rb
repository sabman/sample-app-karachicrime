SampleApp::Application.routes.draw do
  get "users/new"

  resources :users

  match '/signup', to: 'users#new'
  match '/home', to: 'static_pages#home'
  match '/contact', to: 'static_pages#contact'
  match '/about', to: 'static_pages#about'
  match '/help', to: 'static_pages#help'

  root to: 'static_pages#home'
end
