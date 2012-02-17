SampleApp::Application.routes.draw do
  resources :users

  match '/signup', to: 'users#new'
  match '/contact', to: 'static_pages#contact'
  match '/about', to: 'static_pages#about'
  match '/help', to: 'static_pages#help'
  root to: 'static_pages#home'

  get "static_pages/home"
  get "static_pages/contact"
  get "static_pages/about"
  get "static_pages/help"
end
