Rails.application.routes.draw do

  devise_for :users
  resources :contacts

  devise_scope :user do
    get "/logout" => "devise/sessions#destroy"
  end

  #root 'devise/sessions#new'

  #root  'devise/registrations#new'

  root 'home#index'



  get 'home/about'
 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
